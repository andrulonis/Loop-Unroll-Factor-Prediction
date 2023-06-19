#include "utils.h"
#include "llvm/Pass.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/ScalarEvolution.h"
#include "llvm/Analysis/DependenceAnalysis.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Transforms/Utils.h"
#include "llvm/Support/raw_ostream.h"

#define DEBUG_TYPE "LoopAnalysisPass"

using namespace llvm;

namespace {
    struct LoopAnalysisPass : public FunctionPass {
        static char ID;
        LoopAnalysisPass() : FunctionPass(ID) {}

        void getAnalysisUsage(AnalysisUsage &AU) const override {
            AU.addRequired<LoopInfoWrapperPass>();
            AU.addRequired<ScalarEvolutionWrapperPass>();
            AU.addRequired<DependenceAnalysisWrapperPass>();
            AU.addRequiredID(LoopSimplifyID);
            AU.setPreservesAll();
        }

        unsigned countAllNestedLoops(Loop *L) {
            unsigned count = L->getSubLoops().size();
            for (Loop *SL : L->getSubLoops()) {
                count += countAllNestedLoops(SL);
            }
            return count; 
        }

        void analyseLoop(Loop *L, ScalarEvolution &SE, DependenceInfo &DI, Function &F) { //, LoopInfo &LI) {
            bool noTripCountKnown = false;
            unsigned loopTripCount = 0;
            unsigned numLoads = 0;
            unsigned numStores = 0;
            unsigned numOperands = 0;
            unsigned numFP = 0;
            unsigned numInsts = 0;
            unsigned numBranches = 0;
            unsigned numMemOps = 0;
            unsigned loopDepth = 0;
            unsigned numFirstNestLoops = 0;
            unsigned numAllNestLoops = 0;
            bool isOuterMost = false;
            bool isInnerMost = false;
            bool hasCarriedDependencies = false;

            PHINode* indVar = L->getInductionVariable(SE);
            BinaryOperator* indVarUpdate = NULL;
            ICmpInst* cmp = NULL;
            bool hasLoopUpdate = false;
            std::set<Value*> vectorizedSet;

            loopDepth = L->getLoopDepth();
            numFirstNestLoops = L->getSubLoops().size();
            if (L->getSubLoops().size() > 0) {
                numAllNestLoops = countAllNestedLoops(L);
            }
            if (L->getParentLoop() == NULL) {
                isOuterMost = true;
            }
            if (L->getSubLoops().empty()) {
                isInnerMost = true;
            }

            if (BasicBlock* latchBlock = L->getExitingBlock()) {
                for (auto& lbInst : *latchBlock) {
                    if (auto* exitingBranch = dyn_cast<BranchInst>(&lbInst)) {
                        if (exitingBranch->isConditional()) {
                            cmp = dyn_cast<ICmpInst>(exitingBranch->getCondition());
                        }
                    }
                }
            }

            if (indVar != NULL) {
                for (unsigned int i = 0; i < indVar->getNumIncomingValues(); i++) {
                    Value* incomingVal = indVar->getIncomingValue(i);

                    if (auto* binOp = dyn_cast<BinaryOperator>(incomingVal)) {
                        bool isIndVarOp = binOp->getOperand(0) == indVar || binOp->getOperand(1) == indVar;

                        if (isIndVarOp && indVarUpdate == NULL) {
                            indVarUpdate = binOp;
                            hasLoopUpdate = true;
                        } 
                        else if (isIndVarOp && indVarUpdate != NULL) {
                            hasLoopUpdate = false;
                        }
                    }
                }
            }
            
            for (auto *BB : L->getBlocks()) {
                for (auto &I : *BB) {
                    if (isa<LoadInst>(&I)) {
                        numLoads++;
                    } 
                    
                    if (isa<StoreInst>(&I)) {
                        numStores++;
                    }

                    numOperands += I.getNumOperands();

                    if (isa<FPMathOperator>(&I)) {
                        numFP++;
                    }

                    numInsts++;

                    if (isa<BranchInst>(&I)) {
                        numBranches++;
                    }

                    if (isa<LoadInst>(&I) || isa<StoreInst>(&I)) {
                        numMemOps++;
                    }
                    
                    if (hasLoopUpdate && !hasCarriedDependencies) {
                        if (&I == cmp || &I == indVar || &I == indVarUpdate) {continue;}
                        else if (auto* gep = dyn_cast<GetElementPtrInst>(&I)) {
                            for (auto& index : gep->indices()) { 
                                if (index != indVar && !L->isLoopInvariant(index)) {
                                    hasCarriedDependencies = true;
                                }
                            }
                            vectorizedSet.insert(gep);
                        } 
                        else if (auto* branch = dyn_cast<BranchInst>(&I)) {
                            if (branch->isConditional()) {
                                if (L->isLoopInvariant(branch->getCondition())) {
                                    hasCarriedDependencies = true; 
                                }
                            }
                        } 
                        else {
                            for (unsigned int i = 0; i < I.getNumOperands(); i ++) {
                                Value* operand = I.getOperand(i);
                                if (vectorizedSet.count(operand) == 0
                                    && !L->isLoopInvariant(operand)
                                    && operand != indVar) {
                                    hasCarriedDependencies = true;
                                }
                            }
                            vectorizedSet.insert(&I);
                        }
                    }
                }
            }
            
            if (SE.getSmallConstantTripCount(L)) {
                loopTripCount = SE.getSmallConstantTripCount(L);
            }
            else if (SE.getSmallConstantMaxTripCount(L)) {
                loopTripCount = SE.getSmallConstantMaxTripCount(L);
            }
            else {
                noTripCountKnown = true;
            }

            // Used for easier data extraction
            errs() << "### " << (noTripCountKnown ? -1 : loopTripCount) << "\t" << numLoads << "\t" << numStores << "\t" << 
            numOperands << "\t" << numFP << "\t" << numInsts << "\t" << numBranches << "\t" << numMemOps << "\t" << 
            loopDepth << "\t" << numFirstNestLoops << "\t" << numAllNestLoops << "\t" << isOuterMost << "\t" << 
            isInnerMost << "\t" << hasCarriedDependencies << " ###\n";

            // Finding locations for each loop in original code, add -g to clang command
            if (L->getStartLoc()) {
                errs() << "Loop at line: " << L->getStartLoc().getLine() << "\n";
            }

            errs() << "Loop:" << L->getName() << "\n";
            errs() << "Loop Trip Count: " << (noTripCountKnown ? -1 : loopTripCount) << "\n";
            errs() << "Number of Load Instructions: " << numLoads << "\n";
            errs() << "Number of Store Instructions: " << numStores << "\n";
            errs() << "Number of Operands: " << numOperands << "\n";
            errs() << "Number of Floating Point Operations: " << numFP << "\n";
            errs() << "Number of Instructions: " << numInsts << "\n";
            errs() << "Number of Branches: " << numBranches << "\n";
            errs() << "Number of Memory Operations: " << numMemOps << "\n";
            errs() << "Loop Depth: " << loopDepth << "\n";
            errs() << "Number of Loops Inside (first nest level): " << numFirstNestLoops << "\n";
            errs() << "Number of Loops Inside (all nest levels): " << numAllNestLoops << "\n";
            errs() << "Is outermost: " << (isOuterMost ? "yes" : "no") << "\n";
            errs() << "Is innermost: " << (isInnerMost ? "yes" : "no") << "\n";
            errs() << "Has loop carried dependencies: " << (hasCarriedDependencies ? "yes" : "no") << "\n\n";

            // Recursively analyse all subloops
            for (Loop *SL : L->getSubLoops()) {
                analyseLoop(SL, SE, DI, F);
            }
        }

        bool runOnFunction(Function &F) override {
            LoopInfo &LI = getAnalysis<LoopInfoWrapperPass>().getLoopInfo();
            ScalarEvolution &SE = getAnalysis<ScalarEvolutionWrapperPass>().getSE();
            DependenceInfo &DI = getAnalysis<DependenceAnalysisWrapperPass>().getDI();
            
            for (Loop *L : LI) {
                analyseLoop(L, SE, DI, F);
            }

            return false;
        }
    };
}

char LoopAnalysisPass::ID = 0;
static RegisterPass<LoopAnalysisPass> X("loop-analysis", "Loop Analysis Pass");

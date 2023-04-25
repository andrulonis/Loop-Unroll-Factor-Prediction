#define DEBUG_TYPE "LoopAnalysisPass"
#include "utils.h"
#include "llvm/Pass.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/ScalarEvolution.h"
#include "llvm/Analysis/DependenceAnalysis.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;

namespace {
    struct LoopAnalysisPass : public FunctionPass {
        static char ID;
        LoopAnalysisPass() : FunctionPass(ID) {}

        void getAnalysisUsage(AnalysisUsage &AU) const override {
            AU.addRequired<LoopInfoWrapperPass>();
            AU.addRequired<ScalarEvolutionWrapperPass>();
            AU.addRequired<DependenceAnalysisWrapperPass>();
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
            bool hasPurelyLoopsInside = true;
            bool hasCarriedDependencies = false;

            loopDepth = L->getLoopDepth();
            numFirstNestLoops = L->getSubLoops().size();
            if (L->getSubLoops().size() > 0) {
                numAllNestLoops = countAllNestedLoops(L);
            }

            // PHINode* indVar = L->getInductionVariable(SE);
            // errs() << indVar << "\n\n\n";
            // std::set<Value*> vectorizedSet;
            // BinaryOperator* indVarUpdate = NULL;
            // ICmpInst* cmp = NULL;
            // int VECTOR_SIZE = 4;
            // bool hasVectorizableLoopBound = false;
            // bool hasLoopUpdate = false;

            // if (BasicBlock* latchBlock = L->getExitingBlock()) {
            //     for (auto& lbInst : *latchBlock) {
            //         if (auto* exitingBranch = dyn_cast<BranchInst>(&lbInst)) {
            //             // branch must have a condition (which sets the loop bound)
            //             if (exitingBranch->isConditional()) {
            //                 if ((cmp = dyn_cast<ICmpInst>(exitingBranch->getCondition()))) {
            //                     Value* op1 = cmp->getOperand(0);
            //                     Value* op2 = cmp->getOperand(1);
            //                     errs() << op1 << "\n";
            //                     errs() << op2 << "\n";
            //                     errs() << indVar << "\n\n\n";
            //                     Value* loopBound = op1 == indVar ? op2 : (op2 == indVar ? op1 : NULL);
            //                     // loop bound must be a constant. otherwise we can't vectorize
            //                     if (loopBound != NULL) {
            //                         if (auto* loopBoundConst = dyn_cast<ConstantInt>(loopBound)) {
            //                             int64_t intBound = loopBoundConst->getSExtValue();
            //                             hasVectorizableLoopBound = intBound % VECTOR_SIZE == 0;
            //                         }
            //                     } 
            //                     else {
            //                     // errs() << "no loop bound found!\n";
            //                     }
            //                 }
            //             }
            //         }
            //     }
            // }

            // if (hasVectorizableLoopBound) {
            //     // find indvar update instruction
            //     // dont vectorize unless we find an update instruction
            //     for (unsigned i = 0; i < indVar->getNumIncomingValues(); i++) {
            //         Value* incomingVal = indVar->getIncomingValue(i);

            //         if (auto* binOp = dyn_cast<BinaryOperator>(incomingVal)) {
            //             bool isIndVarOp = binOp->getOperand(0) == indVar || binOp->getOperand(1) == indVar;

            //             if (isIndVarOp && indVarUpdate == NULL) {
            //                 indVarUpdate = binOp;
            //                 hasLoopUpdate = true;

            //             // multiple updates to the indvar is not allowed!
            //             } 
            //             else if (isIndVarOp && indVarUpdate != NULL) {
            //                 hasLoopUpdate = false;
            //             }
            //         }
            //     }
            // }

            for (auto *BB : L->getBlocks()) {
                // if (auto *nestedLoop = LI.getLoopFor(BB)) { TODO:
                //     if (nestedLoop == L) {
                //         errs() << "test" << "\n";
                //         hasPurelyLoopsInside = false;
                //     }
                // }
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

                    // if (!hasCarriedDependencies) {
                    //     for (inst_iterator I = inst_begin(F), E = inst_end(F); I != E; I++) {
                    //         for (inst_iterator J = I; J != E; J++) {
                    //             std::unique_ptr<Dependence> infoPtr;
                    //             infoPtr = DI.depends(&*I, &*J, true);
                    //             Dependence *dep = infoPtr.get();
                    //             if (dep != NULL && !dep->isInput()) {
                    //                 if (!dep->isLoopIndependent()) {
                    //                     hasCarriedDependencies = true;
                    //                 }
                    //                 // if (dep->isConfused()) errs() << "[C]";
                    //                 // dep->getDst()->print(errs(), false);
                    //                 // errs() << "   ---> ";
                    //                 // dep->getSrc()->print(errs(), false);
                    //                 // errs() << "\n";
                    //             }
                    //         }
                    //     }
                    // }

                        // // check dependencies between each pair of instructions
                        // for (inst_iterator I = inst_begin(F), E = inst_end(F); I != E; I++) {
                        // for (inst_iterator J = I; J != E; J++) {
                        //     std::unique_ptr<Dependence> infoPtr;
                        //     infoPtr = depinfo->depends(&*I, &*J, true);
                        //     Dependence *dep = infoPtr.get();
                        //     if (dep != NULL && !dep->isInput()) {
                        //     if (!dep->isLoopIndependent()) errs() << "[L]";
                        //     if (dep->isConfused()) errs() << "[C]";
                        //     dep->getDst()->print(errs(), false);
                        //     errs() << "   ---> ";
                        //     dep->getSrc()->print(errs(), false);
                        //     errs() << "\n";
                        //     }
                        // }

                    // if (!hasVectorizableLoopBound || !hasLoopUpdate) {continue;}

                    // if (hasCarriedDependencies || &I == cmp || &I == indVar || &I == indVarUpdate) {continue;} 
                    // else if (auto* gep = dyn_cast<GetElementPtrInst>(&I)) {
                    //     for (auto& index : gep->indices()) { 
                    //         if (index != indVar && !L->isLoopInvariant(index)) {
                    //             hasCarriedDependencies = true;
                    //         }
                    //     }
                    //     vectorizedSet.insert(gep);
                    // } 
                    // else if (auto* branch = dyn_cast<BranchInst>(&I)) {
                    //     if (branch->isConditional()) {
                    //         if (L->isLoopInvariant(branch->getCondition())) {
                    //             hasCarriedDependencies = true; 
                    //         }
                    //     }
                    // } 
                    // else {
                    //     for (unsigned i = 0; i < I.getNumOperands(); i ++) {
                    //         Value* operand = I.getOperand(i);
                    //         if (vectorizedSet.count(operand) == 0 && !L->isLoopInvariant(operand) && operand != indVar) {
                    //             hasCarriedDependencies = true;
                    //         }
                    //     }
                    //     vectorizedSet.insert(&I);
                    // }
                }
                for (auto I = BB->begin(), E = BB->end(); I != E; ++I) {
                    for (auto J = BB->begin(); J != E; ++J) {
                        if (&*I != &*J) {
                            std::unique_ptr<Dependence> infoPtr;
                            infoPtr = DI.depends(&*I, &*J, true);
                            Dependence *dep = infoPtr.get();
                            if (dep != NULL && !dep->isInput()) {
                                if (!dep->isLoopIndependent()) {
                                    hasCarriedDependencies = true;
                                }
                            }
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

            errs() << "### " << (noTripCountKnown ? -1 : loopTripCount) << "\t" << numLoads << "\t" << numStores << "\t" << 
            numOperands << "\t" << numFP << "\t" << numInsts << "\t" << numBranches << "\t" << numMemOps << "\t" << 
            loopDepth << "\t" << numFirstNestLoops << "\t" << numAllNestLoops << " ###\n";

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
            errs() << "Has Purely Loops Inside: " << hasPurelyLoopsInside << "\n";
            errs() << "Has loop carried dependencies: " << (hasCarriedDependencies ? "yes" : "no") << "\n\n";

            for (Loop *SL : L->getSubLoops()) {
                analyseLoop(SL, SE, DI, F);//, LI);
            }
        }

        bool runOnFunction(Function &F) override {
            LoopInfo &LI = getAnalysis<LoopInfoWrapperPass>().getLoopInfo();
            ScalarEvolution &SE = getAnalysis<ScalarEvolutionWrapperPass>().getSE();
            DependenceInfo &DI = getAnalysis<DependenceAnalysisWrapperPass>().getDI();
            
            for (Loop *L : LI) {
                analyseLoop(L, SE, DI, F);//, LI);
            }

            return false;
        }
    };
}

char LoopAnalysisPass::ID = 0;
static RegisterPass<LoopAnalysisPass> X("loop-analysis", "Loop Analysis Pass");

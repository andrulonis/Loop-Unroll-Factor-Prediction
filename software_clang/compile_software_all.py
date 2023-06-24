import subprocess
import os

# Put this file in the directory of all benchmark programs' directories ("benchmark_codes") after creating a
# manually unrolled .c version of the original .c benchmark program (add #pragma unroll x wherever one wants and then save it as "<programme name>_manual.c".

dirs = ["bb_gemm", "fft", "md", "pp_scan", "reduction", "ss_sort", "stencil", "triad"]

for programme in dirs:
    os.chdir(programme)
    commands = [
        f"clang -O0 -Xclang -disable-O0-optnone -emit-llvm {programme}.c -S -o unroll_no_auto_all/{programme}.ll",
        f"clang -O0 -Xclang -disable-O0-optnone -emit-llvm {programme}_manual.c -S -o unroll_no_auto_all/{programme}_manual.ll",
        f"opt -mem2reg -loop-simplify -loop-rotate -instcombine -simplifycfg -lcssa -indvars -S unroll_no_auto_all/{programme}.ll -o unroll_no_auto_all/{programme}_no.ll",
        f"opt -mem2reg -loop-simplify -loop-rotate -instcombine -simplifycfg -lcssa -indvars -loop-unroll -S unroll_no_auto_all/{programme}.ll -o unroll_no_auto_all/{programme}_auto.ll",
        f"opt -mem2reg -loop-simplify -loop-rotate -instcombine -simplifycfg -lcssa -indvars -loop-unroll -S unroll_no_auto_all/{programme}_manual.ll -o unroll_no_auto_all/{programme}_manual.ll",
        f"opt -mem2reg -loop-simplify -loop-rotate -instcombine -simplifycfg -lcssa -indvars -loop-unroll -unroll-count=2 -S unroll_no_auto_all/{programme}.ll -o unroll_no_auto_all/{programme}_2.ll",
        f"opt -mem2reg -loop-simplify -loop-rotate -instcombine -simplifycfg -lcssa -indvars -loop-unroll -unroll-count=4 -S unroll_no_auto_all/{programme}.ll -o unroll_no_auto_all/{programme}_4.ll",
        f"opt -mem2reg -loop-simplify -loop-rotate -instcombine -simplifycfg -lcssa -indvars -loop-unroll -unroll-count=8 -S unroll_no_auto_all/{programme}.ll -o unroll_no_auto_all/{programme}_8.ll",
        f"opt -mem2reg -loop-simplify -loop-rotate -instcombine -simplifycfg -lcssa -indvars -loop-unroll -unroll-count=16 -S unroll_no_auto_all/{programme}.ll -o unroll_no_auto_all/{programme}_16.ll",
        f"opt -mem2reg -loop-simplify -loop-rotate -instcombine -simplifycfg -lcssa -indvars -loop-unroll -unroll-count=32 -S unroll_no_auto_all/{programme}.ll -o unroll_no_auto_all/{programme}_32.ll",
        f"opt -mem2reg -loop-simplify -loop-rotate -instcombine -simplifycfg -lcssa -indvars -loop-unroll -unroll-count=64 -S unroll_no_auto_all/{programme}.ll -o unroll_no_auto_all/{programme}_64.ll",
        f"llc -O0 unroll_no_auto_all/{programme}_no.ll -o unroll_no_auto_all/{programme}_no.s",
        f"llc -O0 unroll_no_auto_all/{programme}_auto.ll -o unroll_no_auto_all/{programme}_auto.s",
        f"llc -O0 unroll_no_auto_all/{programme}_manual.ll -o unroll_no_auto_all/{programme}_manual.s",
        f"llc -O0 unroll_no_auto_all/{programme}_2.ll -o unroll_no_auto_all/{programme}_2.s",
        f"llc -O0 unroll_no_auto_all/{programme}_4.ll -o unroll_no_auto_all/{programme}_4.s",
        f"llc -O0 unroll_no_auto_all/{programme}_8.ll -o unroll_no_auto_all/{programme}_8.s",
        f"llc -O0 unroll_no_auto_all/{programme}_16.ll -o unroll_no_auto_all/{programme}_16.s",
        f"llc -O0 unroll_no_auto_all/{programme}_32.ll -o unroll_no_auto_all/{programme}_32.s",
        f"llc -O0 unroll_no_auto_all/{programme}_64.ll -o unroll_no_auto_all/{programme}_64.s",
        f"clang -O0 unroll_no_auto_all/{programme}_no.s -o unroll_no_auto_all/{programme}_no",
        f"clang -O0 unroll_no_auto_all/{programme}_auto.s -o unroll_no_auto_all/{programme}_auto",
        f"clang -O0 unroll_no_auto_all/{programme}_manual.s -o unroll_no_auto_all/{programme}_manual",
        f"clang -O0 unroll_no_auto_all/{programme}_2.s -o unroll_no_auto_all/{programme}_2",
        f"clang -O0 unroll_no_auto_all/{programme}_4.s -o unroll_no_auto_all/{programme}_4",
        f"clang -O0 unroll_no_auto_all/{programme}_8.s -o unroll_no_auto_all/{programme}_8",
        f"clang -O0 unroll_no_auto_all/{programme}_16.s -o unroll_no_auto_all/{programme}_16",
        f"clang -O0 unroll_no_auto_all/{programme}_32.s -o unroll_no_auto_all/{programme}_32",
        f"clang -O0 unroll_no_auto_all/{programme}_64.s -o unroll_no_auto_all/{programme}_64"
    ]

    for command in commands:
        subprocess.call(command, shell=True)
    os.chdir("..")

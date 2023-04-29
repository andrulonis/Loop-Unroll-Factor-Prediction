import subprocess
import os

dirs = ["bb_gemm", "fft", "md", "pp_scan", "reduction", "ss_sort", "stencil", "triad"]

for programme in dirs:
    os.chdir(f"./{programme}")
    commands = [
        f"clang -O0 -Xclang -disable-O0-optnone -emit-llvm {programme}.c -S -o software/{programme}.ll",
        f"opt -mem2reg -simplifycfg -loop-simplify -lcssa -indvars -S software/{programme}.ll -o software/{programme}_no.ll",
        f"opt -mem2reg -simplifycfg -loop-simplify -lcssa -indvars -loop-unroll -S software/{programme}.ll -o software/{programme}_auto.ll",
        f"opt -mem2reg -simplifycfg -loop-simplify -lcssa -indvars -loop-unroll -unroll-count=2 -S software/{programme}.ll -o software/{programme}_2.ll",
        f"opt -mem2reg -simplifycfg -loop-simplify -lcssa -indvars -loop-unroll -unroll-count=4 -S software/{programme}.ll -o software/{programme}_4.ll",
        f"opt -mem2reg -simplifycfg -loop-simplify -lcssa -indvars -loop-unroll -unroll-count=8 -S software/{programme}.ll -o software/{programme}_8.ll",
        f"opt -mem2reg -simplifycfg -loop-simplify -lcssa -indvars -loop-unroll -unroll-count=16 -S software/{programme}.ll -o software/{programme}_16.ll",
        f"opt -mem2reg -simplifycfg -loop-simplify -lcssa -indvars -loop-unroll -unroll-count=32 -S software/{programme}.ll -o software/{programme}_32.ll",
        f"opt -mem2reg -simplifycfg -loop-simplify -lcssa -indvars -loop-unroll -unroll-count=64 -S software/{programme}.ll -o software/{programme}_64.ll",
        f"llc -O0 software/{programme}_no.ll -o software/{programme}_no.s",
        f"llc -O0 software/{programme}_auto.ll -o software/{programme}_auto.s",
        f"llc -O0 software/{programme}_2.ll -o software/{programme}_2.s",
        f"llc -O0 software/{programme}_4.ll -o software/{programme}_4.s",
        f"llc -O0 software/{programme}_8.ll -o software/{programme}_8.s",
        f"llc -O0 software/{programme}_16.ll -o software/{programme}_16.s",
        f"llc -O0 software/{programme}_32.ll -o software/{programme}_32.s",
        f"llc -O0 software/{programme}_64.ll -o software/{programme}_64.s",
        f"clang -O0 software/{programme}_no.s -o software/{programme}_no",
        f"clang -O0 software/{programme}_auto.s -o software/{programme}_auto",
        f"clang -O0 software/{programme}_2.s -o software/{programme}_2",
        f"clang -O0 software/{programme}_4.s -o software/{programme}_4",
        f"clang -O0 software/{programme}_8.s -o software/{programme}_8",
        f"clang -O0 software/{programme}_16.s -o software/{programme}_16",
        f"clang -O0 software/{programme}_32.s -o software/{programme}_32",
        f"clang -O0 software/{programme}_64.s -o software/{programme}_64"
    ]

    for command in commands:
        subprocess.call(command, shell=True)
    os.chdir("..")

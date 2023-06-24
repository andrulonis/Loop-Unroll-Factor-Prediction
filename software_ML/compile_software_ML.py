import subprocess
import os

# Put this file in the directory of all benchmark programs' directories ("benchmark_codes")

dirs = ["bb_gemm", "fft", "md", "pp_scan", "reduction", "ss_sort", "stencil", "triad"]

for dir in dirs:
    os.chdir(dir)
    f = open(f"{dir}.c", "r")
    programme = f.read()
    f.close()

    f = open(f"compile/{dir}_base.c", "w+")
    f.write(programme)
    f.close()

    for i in range(len(programme.split("#pragma unroll 1")) - 1):
        for unroll in [2,4,8,16,32,64]:
            f = open(f"compile/{dir}_{i}_{unroll}.c", "w+")
            for j, between_code in enumerate(programme.split("#pragma unroll 1")):
                if j != 0:
                    if j-1 == i:
                        f.write(f"#pragma unroll {unroll}")
                    else:
                        f.write("#pragma unroll 1")
                f.write(between_code)
            f.close()
    
    os.chdir("compile")
    for file in os.listdir(os.getcwd()):
        source = os.fsdecode(file)
        if source.endswith(".c"):
            prog_name = source[:-2]
            commands = [
                f"clang -O0 -Xclang -disable-O0-optnone -emit-llvm {prog_name}.c -S -o {prog_name}.ll",
                f"opt -mem2reg -loop-simplify -loop-rotate -instcombine -simplifycfg -lcssa -indvars -loop-unroll -S {prog_name}.ll -o {prog_name}.ll",
                f"llc -O0 {prog_name}.ll -o {prog_name}.s",
                f"clang -O0 {prog_name}.s -o {prog_name}"
            ]

            for command in commands:
                subprocess.call(command, shell=True)

    os.chdir("../..")

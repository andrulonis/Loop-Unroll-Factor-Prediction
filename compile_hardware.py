import subprocess
import os

for dir in os.listdir(os.getcwd()):
    dirname = os.fsdecode(dir)
    if os.path.isdir(dirname):
        os.chdir(dirname)
        programme = os.path.basename(os.getcwd()).split("-")[0]
        commands = [
            f"clang -O0 -g -Xclang -disable-O0-optnone -emit-llvm {programme}.c -S -o {programme}_dbg.ll",
            f"clang -O0 -Xclang -disable-O0-optnone -emit-llvm {programme}.c -S -o {programme}.ll",
            f"opt -mem2reg -loop-simplify -loop-rotate -instcombine -simplifycfg -lcssa -indvars -S {programme}.ll -o {programme}.ll",
        ]

        for command in commands:
            subprocess.call(command, shell=True)
        os.chdir("..")

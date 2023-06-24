import os
import subprocess

# Put this file in the directory of all benchmark programs' directories ("benchmark_codes"), has to be run with
# the loop-analysis pass registered in opt, myopt is a local wrapper that simply calls the
# pass and then runs it. Afterwards it prints the changed LLVM code to stdout. So this can 

def main():
    f = open("metrics_export.txt", "a+")
    
    for dir in os.listdir(os.getcwd()):
        dirname = os.fsdecode(dir)
        if os.path.isdir(dirname):
            os.chdir(dirname)
            programme = os.path.basename(os.getcwd()).split("-")[0]
            f.write(dirname + "\n")
            analysis = subprocess.getoutput(f"myopt -loop-analysis {programme}.ll").split("###")
            loop_lines = subprocess.getoutput(f"myopt -loop-analysis {programme}_dbg.ll").split("Loop at line: ")[1:]
            for line, loop_metrics in zip(loop_lines, analysis[1::2]):
                f.write(line.split()[0] + "\t")
                f.write(loop_metrics + "\n")
            f.write("\n")
            os.chdir("..")

    f.close()

if __name__ == "__main__":
    main()

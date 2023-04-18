import os
import subprocess

def main():
    f = open("metrics_export.txt", "a+")
    
    for dir in os.listdir(os.getcwd()):
        dirname = os.fsdecode(dir)
        if os.path.isdir(dirname):
            os.chdir(dirname)
            programme = os.path.basename(os.getcwd()).split("-")[0]
            f.write(dirname + "\n")
            analysis = subprocess.getoutput("myopt -loop-analysis " + programme + ".llvm").split("###")
            loop_lines = subprocess.getoutput("myopt -loop-analysis " + programme + "_dbg.llvm").split("Loop at line: ")[1:]
            for line, loop_metrics in zip(loop_lines, analysis[1::2]):
                f.write(line.split()[0] + "\t")
                f.write(loop_metrics + "\n")
            f.write("\n")
            os.chdir("..")

    f.close()

if __name__ == "__main__":
    main()
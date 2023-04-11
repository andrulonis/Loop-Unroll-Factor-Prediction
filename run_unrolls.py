import os
import subprocess

def main():
    programme = os.path.basename(os.getcwd())
    os.chdir(os.getcwd() + "/example")

    f = open("config_example")
    config = f.readlines()
    f.close()
    
    unrolls = [line for line in config if line.split(",")[0] == "unrolling"]

    for unroll in unrolls:
        for factor in [2,4,8,16,32,64]: #TODO: change factor in unroll line and save as the same file
            subprocess.call(["/workspace/ALADDIN/common/aladdin " + programme + " ../dynamic_trace.gz " + "config_example"], shell=True)
            f = open(programme + "_summary")
            summary = f.readlines()
            f.close()

            cycles = ""
            area = ""

            for line in summary:
                if line.split(":")[0] == "Total Area":
                    area = line.split(":")[1].strip()
                if line.split(":")[0] == "Cycle ":
                    cycles = line.split(":")[1].strip()
            
            export = open("export.txt", "w+")
            export.write(programme + " " + unroll.split(",")[1] + " " + unroll.split(",")[2] + " " + unroll.split(",")[3] + " " + cycles + " " + area + "\n")
    
    f.close()

if __name__ == "__main__":
    main()
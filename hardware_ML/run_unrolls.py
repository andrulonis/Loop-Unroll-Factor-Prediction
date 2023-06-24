import os
import subprocess

# Put this file in the directory of all benchmark programs' directories in the "ALADDIN/<suite name>/<program name>" folder after installing ALADDIN
# Also requires a prepared config file in the "example" folder of the benchmark code with all loops having unroll factor set to 1, just like 
# presented in the example on ALADDIN github page: https://github.com/harvard-acc/ALADDIN. Config files are also provided in the "config_files" directory

def main():
    programme = os.path.basename(os.getcwd())
    os.chdir(os.getcwd() + "/example")

    f = open("config_example")
    config = f.readlines()
    f.close()
    
    partitions = [line for line in config if line.split(",")[0] == "partition"]
    unrolls = [line for line in config if line.split(",")[0] == "unrolling"]
    unrolls_copy = unrolls.copy()

    for unroll in unrolls:
        unrolls_copy.remove(unroll)
        for factor in [1,2,4,8,16,32,64]:
            f = open("config_example", "w")
            f.writelines(partitions)
            f.writelines(unrolls_copy)
            f.write(unroll[:-2] + str(factor) + "\n")
            f.write("cycle_time,6")
            f.close()
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
            
            export = open("export_" + programme + ".txt", "a+")
            export.write(programme + " " + unroll.split(",")[1] + " " + unroll.split(",")[2] + " " + str(factor) + ": " + cycles + " " + area + "\n")
            export.close()

        unrolls_copy = unrolls.copy()
    
    # Reset to original
    f = open("config_example", "w")
    f.writelines(config)
    f.close()

if __name__ == "__main__":
    main()

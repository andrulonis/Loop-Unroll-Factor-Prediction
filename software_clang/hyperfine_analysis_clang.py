import subprocess
import os

# Put this file in the directory of all benchmark programs' directories

for dir in os.listdir(os.getcwd()):
    dirname = os.fsdecode(dir)
    if os.path.isdir(dirname):
        subprocess.call(f"python3 plot_whisker.py {dirname}/unroll_no_auto_all/hyperfine.json -o whiskers/{dirname}_whisker.png --labels no,auto,manual,2,4,8,16,32,64 --title {dirname}", shell=True)
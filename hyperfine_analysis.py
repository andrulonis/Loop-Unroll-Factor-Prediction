import subprocess
import os

for dir in os.listdir(os.getcwd()):
    dirname = os.fsdecode(dir)
    if os.path.isdir(dirname):
        subprocess.call(f"python3 plot_whisker.py {dirname}/hyperfine.json -o {dirname}_whisker.png --labels no,auto,2,4,8,16,32,64 --title {dirname}", shell=True)
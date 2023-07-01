import subprocess
import os
import time

dirs = ["bb_gemm", "fft", "md", "pp_scan", "reduction", "ss_sort", "stencil", "triad"]

for programme in dirs:
    os.chdir(f"{programme}/compile")
    #--warmup 10
    #run sudo -v before for cache clearing

    files = os.listdir(os.getcwd())
    run_files = [file for file in files if not os.fsdecode(file).endswith((".c", ".h", ".ll", ".s", ".data", ".json", ".md"))]
    commands = []
    for i in range(int((len(run_files)-1)/6)):
        command = f"hyperfine --warmup 10 --prepare 'sync; echo 3 | sudo tee /proc/sys/vm/drop_caches' './{programme}_base' "
        for unroll in [2,4,8,16,32,64]:
            command += f"'./{programme}_{i}_{unroll}' "
        command += f"--export-json hyperfine_{i}.json --export-markdown hyperfine_{i}.md"
        commands.append(command)

    for command in commands:
        time.sleep(5)
        subprocess.call(command, shell=True)

    os.chdir("../..")

import subprocess
import os
import time

dirs = ["bb_gemm", "fft", "md", "pp_scan", "reduction", "ss_sort", "stencil", "triad"]

for programme in dirs:
    os.chdir(f"./{programme}/software")
    time.sleep(5)
    #--warmup 10
    #run sudo -v for prepare cache clearing
    subprocess.call(f"hyperfine --prepare 'sync; echo 3 | sudo tee /proc/sys/vm/drop_caches' \'./{programme}_no\' \'./{programme}_auto\' \
                    \'./{programme}_2\' \'./{programme}_4\' \'./{programme}_8\' \
                    \'./{programme}_16\' \'./{programme}_32\' \'./{programme}_64\' \
                    --export-csv hyperfine.csv --export-json hyperfine.json \
                    --export-markdown hyperfine.md", shell=True)

    os.chdir("../..")
import subprocess

dirs = ["bb_gemm", "fft", "md", "pp_scan", "reduction", "ss_sort", "stencil", "triad"]

for dir in dirs:
    subprocess.call(f"python3 plot_whisker.py {dir}/unroll_no_auto_all/hyperfine.json -o whiskers/{dir}_whisker.png --title {dir}", shell=True)

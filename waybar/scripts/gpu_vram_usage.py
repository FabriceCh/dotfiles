# This script requires amdgpu_top to be installed
import string
import json
import subprocess

output = subprocess.run(
    ["amdgpu_top", "-d", "-J"],
    capture_output=True,
    text=True
)

gpus = json.loads(output.stdout)

vram_usage = None
vram_total = None

for gpu in gpus:
    vram_type = gpu.get("VRAM Type", "")
    vram = gpu.get("VRAM", {})

    if vram_type == "GDDR6":
        vram_usage = vram.get("Total VRAM Usage", {}).get("value")
        vram_total = vram.get("Total VRAM", {}).get("value")


if vram_usage is None or vram_total is None:
    print ("problem getting gpu vram info")
    exit(1)

usage = vram_usage/vram_total*100

text = f"{round(usage, 1)}"
tooltip = f"{vram_usage}MiB/{vram_total}MiB"

print(text)
print(tooltip)

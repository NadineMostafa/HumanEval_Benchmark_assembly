import os
import pandas as pd
from datasets import Dataset

# -------- Step 1: Collect data --------
x86_folder = "./x86"
armv8_folder = "./armv8"

rows = []
for file_name in os.listdir(x86_folder):
    x86_path = os.path.join(x86_folder, file_name)
    armv8_path = os.path.join(armv8_folder, file_name)

    if os.path.isfile(x86_path) and os.path.isfile(armv8_path):
        with open(x86_path, "r", encoding="utf-8", errors="ignore") as f1:
            x86_content = f1.read()
        with open(armv8_path, "r", encoding="utf-8", errors="ignore") as f2:
            armv8_content = f2.read()

        rows.append({
            "file_name": file_name,
            "x86_content": x86_content,
            "armv8_content": armv8_content
        })

# -------- Step 2: Create Dataset --------
df = pd.DataFrame(rows)
dataset = Dataset.from_pandas(df)

print(dataset)
print(dataset[0])  # sanity check

# -------- Step 3: Push to Hugging Face --------
# Make sure you already logged in with: huggingface-cli login
repo_id = "NadineMostafa/HumanEval-armv8-O2-clang-native"

from huggingface_hub import login

login()

dataset.push_to_hub(repo_id)

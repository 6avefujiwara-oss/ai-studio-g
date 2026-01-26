
import os

# 文字化けが確認されている、または可能性が高いファイルのリスト
target_files = [
    'index.html',
    'features.html',
    'portfolio.html',
    'process.html',
    'faq.html',
    'company.html',
    'contact.html',
    'privacy.html',
    'script.js'
]

# 正常に見えるファイル（処理しない）
# 'pricing.html', 'news.html', 'estimate.html', 'demo.html'

base_dir = r"c:\Users\user\OneDrive\デスクトップ\antiG103"

print("Starting encoding fix (CP932 -> UTF-8)...")

for fname in target_files:
    path = os.path.join(base_dir, fname)
    if not os.path.exists(path):
        print(f"Skipping {fname} (not found)")
        continue

    # Step 1: Try reading as CP932 (Shift_JIS)
    content = None
    try:
        with open(path, 'r', encoding='cp932') as f:
            content = f.read()
            print(f"Read {fname} as CP932 successfully.")
    except UnicodeDecodeError:
        print(f"Could not read {fname} as CP932. It might be already UTF-8 or binary.")
        continue
    except Exception as e:
        print(f"Error reading {fname}: {e}")
        continue

    # Step 2: Write back as UTF-8
    if content:
        try:
            with open(path, 'w', encoding='utf-8') as f:
                f.write(content)
            print(f"Saved {fname} as UTF-8.")
        except Exception as e:
            print(f"Error writing {fname}: {e}")

print("Encoding fix completed.")


import os

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

base_dir = r"c:\Users\user\OneDrive\デスクトップ\antiG103"

print("Starting mojibake repair (Reverse: UTF8 string -> CP932 bytes -> UTF8 decode)...")

for fname in target_files:
    path = os.path.join(base_dir, fname)
    if not os.path.exists(path):
        print(f"Skipping {fname} (not found)")
        continue

    try:
        # Step 1: Read as UTF-8 (which contains encoded garbage like "迚ｹ蠕ｴ")
        with open(path, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # Step 2: Encode to CP932 to recover the original UTF-8 bytes
        # Using 'replace' to safely handle characters that don't map back (though they should)
        raw_bytes = content.encode('cp932', errors='replace')
        
        # Step 3: Decode as UTF-8 to get the original Japanese text
        fixed_text = raw_bytes.decode('utf-8', errors='replace')
        
        # Simple check: Does it look like proper HTML now?
        if "ＡＩ" in fixed_text or "制作" in fixed_text or "特徴" in fixed_text or "<!DOCTYPE html>" in fixed_text:
             pass 
             # Seems okay
        
        # Step 4: Write back correctly
        with open(path, 'w', encoding='utf-8') as f:
            f.write(fixed_text)
            
        print(f"Repaired {fname}")
        
    except Exception as e:
        print(f"Error processing {fname}: {e}")

print("Mojibake repair completed.")

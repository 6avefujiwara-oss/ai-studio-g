
import os
import glob

files = glob.glob('*.html')

for f in files:
    try:
        with open(f, 'rb') as fp:
            raw = fp.read()
            
        has_bom = raw.startswith(b'\xef\xbb\xbf')
        
        try:
            raw.decode('utf-8')
            is_utf8 = True
        except UnicodeDecodeError:
            is_utf8 = False
            
        try:
            raw.decode('cp932')
            is_cp932 = True
        except UnicodeDecodeError:
            is_cp932 = False

        print(f"File: {f}")
        print(f"  BOM: {has_bom}")
        print(f"  Decodes as UTF-8: {is_utf8}")
        print(f"  Decodes as CP932: {is_cp932}")
        
        # チラ見せ (バイト列の一部)
        # 日本語が含まれていそうな部分を探す
        # <title>タグあたり
        start = raw.find(b'<title>')
        if start != -1:
            end = raw.find(b'</title>', start)
            if end != -1:
                title_bytes = raw[start+7:end]
                print(f"  Title bytes sample: {title_bytes[:20]}")
                if is_utf8:
                    print(f"  Title decoded (utf-8): {title_bytes.decode('utf-8', errors='ignore')}")
                if is_cp932:
                    print(f"  Title decoded (cp932): {title_bytes.decode('cp932', errors='ignore')}")
        print("-" * 20)
            
    except Exception as e:
        print(f"Error checking {f}: {e}")

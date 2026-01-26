
$files = @("index.html", "features.html", "portfolio.html", "process.html", "faq.html", "company.html", "contact.html", "privacy.html", "script.js")
$cp932 = [System.Text.Encoding]::GetEncoding(932)
$utf8 = [System.Text.Encoding]::UTF8

foreach ($file in $files) {
    if (Test-Path $file) {
        try {
            # Read explicitly as UTF8 to capture the mojibake characters
            $text = Get-Content $file -Encoding UTF8 -Raw
            
            # Convert corrupted string back to original bytes using CP932
            $bytes = $cp932.GetBytes($text)
            
            # Decode bytes as proper UTF8
            $fixed = $utf8.GetString($bytes)
            
            # Write back
            [System.IO.File]::WriteAllText("$PWD/$file", $fixed, $utf8)
            Write-Host "Repaired $file"
        } catch {
            Write-Host "Error processing $file : $_"
        }
    }
}


$files = Get-ChildItem -Path . -Filter "*.html"
$utf8 = [System.Text.Encoding]::UTF8

foreach ($file in $files) {
    if ($file.Name -eq "mypage.html") { continue } # Skip the file itself

    $content = Get-Content $file.FullName -Raw -Encoding UTF8
    
    # Check if link already exists
    if ($content -match 'href="mypage.html"') {
        Write-Host "Skipping $($file.Name) - already has My Page link"
        continue
    }

    # Insert after FAQ
    $newContent = $content -replace '(<li><a href="faq.html".*?>FAQ</a></li>)', '$1' + "`n                    <li><a href=`"mypage.html`">マイページ</a></li>"
    
    if ($content -ne $newContent) {
        [System.IO.File]::WriteAllText($file.FullName, $newContent, $utf8)
        Write-Host "Updated $($file.Name)"
    }
    else {
        Write-Host "Warning: Could not update $($file.Name)"
    }
}

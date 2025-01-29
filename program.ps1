# Список програм для встановлення
$apps = @(
    "7zip.7zip",                  # 7-Zip
    "Google.Chrome",               # Google Chrome
    "Mozilla.Firefox",             # Mozilla Firefox
    "Adobe.Acrobat.Reader",        # Adobe Acrobat Reader
    "VideoLAN.VLC"                 # VLC Media Player
)

# Процес встановлення програм
foreach ($app in $apps) {
    Write-Output "Встановлення $app..."
    winget install --id=$app --silent --accept-package-agreements --accept-source-agreements
    Write-Output "$app встановлено!"
}

Write-Output "Усі програми встановлені!"

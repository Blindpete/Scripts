# Silent Install Firefox
# Could be don with choco but that would slow this down, needs testing.
$FireFoxWin64 = 'https://download.mozilla.org/?product=firefox-latest&os=win64&lang=en-GB'
$destination = Join-Path  $env:TEMP 'firefox.exe'
$wc = New-Object net.webclient
$wc.Downloadfile($FireFoxWin64, $destination)
Start-Process -FilePath $destination -ArgumentList "/S" -Wait
Remove-Item -Force $destination
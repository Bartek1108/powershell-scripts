$someString = "32DE7C079F9F3D4B64DC8D495B0EE"
$md5 = new-object -TypeNameSystem.Security.Cryptography.MD5CryptoServiceProvider
$utf8 = new-object -TypeName System.Text.UTF8Encoding
$bithash = [System.BitConverter]::ToString($md5.ComputeHash(($utf8.GetBytes($someString))))
$hash = [convert]::tostring($bitHash,16)
Write-Host $hash
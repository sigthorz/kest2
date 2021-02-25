$Nafn = Read-Host -Prompt "Sláðu inn nafn notanda"
$Fulltnafn = Read-Host -Prompt "Sláðu inn fullt nafn"
$Upplysingar = Read-Host -Prompt "Skrifaðu stutta lýsingu um þig"
$Password = Read-Host -AsSecureString

New-LocalUser "$Nafn" -Password $Password -FullName "$Fulltnafn" -Description "$Upplysingar"
Add-LocalGroupMember -Group "Administrators" -Member "$Nafn"

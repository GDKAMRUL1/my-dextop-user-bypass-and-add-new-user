$username = "NewUser"
$password = Read-Host -AsSecureString "Enter password for new user"

# Create the user
New-LocalUser -Name $username -Password $password -FullName "New User" -Description "Created by USB Script"

# Add user to Administrators group
Add-LocalGroupMember -Group "Administrators" -Member $username

Write-Output "User $username has been created with administrator privileges."

param (
     [string]$Role = $(Read-Host "Role" ),
     [string]$Server = $(Read-Host "Server" ),
     [string]$User = $(Read-Host "User" ),
     [string]$Password = $(Read-Host "Password" ),
     [string]$FilePath = $(Read-Host "FilePath" ),
     [string]$PermFile = $(Read-Host "PermFile" ),
     [string]$Domain = $(Read-Host "Domain" ),
     [string]$DomainUser = $(Read-Host "DomainUser" )
)

# Read the permissions file
$PermissionsFile = "$FilePath\$PermFile"
$cvPermissions = @()
Get-Content $PermissionsFile | Foreach-Object{
     $cvPermissions += $_
}

# connect to vCenter and check to see if the role exists
import-module VMware.VimAutomation.Core
Connect-VIServer -server $Server -User $User -Password $Password
$existingRole = Get-VIRole -name $Role -ErrorAction SilentlyContinue
$privs = Get-VIPrivilege -Server $Server -id $cvPermissions -ErrorAction SilentlyContinue
$rootFolder = Get-Folder -NoRecursion
# create or update the role
if (!$existingRole) {
     New-VIRole -name $Role -Privilege $privs -Server $Server
     New-VIPermission -Entity $rootFolder -Principal $Domain\$DomainUser -Role "$Role" -Propagate:$true
}
else {
     Set-VIRole -Role $Role -AddPrivilege $privs -Server $Server
     New-VIPermission -Entity $rootFolder -Principal $Domain\$DomainUser -Role "$Role" -Propagate:$true
}
Disconnect-VIServer -server $Server -Confirm:$false

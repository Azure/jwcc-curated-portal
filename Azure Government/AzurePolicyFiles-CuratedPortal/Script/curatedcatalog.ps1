<#
.Synopsis
    This script will create a custom policy definition for the JWCC Curated Catalog based on the Allowed resource types and register the PolicyInsights Provider at the Tenant Root Group as well as create a policy assignment to the Tenant Root Group.
.DESCRIPTION
    This script will create a custom policy definition for the JWCC Curated Catalog based on the Allowed resource types and register the PolicyInsights Provider at the Tenant Root Group as well as create a policy assignment to the Tenant Root Group.
.EXAMPLE 
   curatedcatalog.ps1 -folderPath "c:\users\test" -allowListFileName "JWCC_Gov_Final_June_2024_4.0.json"
.NOTES
    This script leverages a preview API for Azure which may or may not be changed in future releases. 
    Script leverage Azure CLI so you must be logged into Azure CLI in order for this to work.
   
    The following parameters are mandatory:
    -folderPath
    -azureCloudName
    -allowListFileName

#>

param(
   # folderPath to Azure AD Roles
   [Parameter(Mandatory = $true)]
   [ValidateNotNull()]
   [ValidateNotNullOrEmpty()]
   [String]$folderPath,

#    # cloud_suffix
#    [Parameter(Mandatory = $true)]
#    [ValidateNotNull()]
#    [ValidateNotNullOrEmpty()]
#    [String]$azureCloudName,

   # allowListFileName = Path to parameters file of allowed services
   [Parameter(Mandatory = $true)]
   [ValidateNotNull()]
   [ValidateNotNullOrEmpty()]
   [String]$allowListFileName
   
)

# Retrieving & Storing Azure Cloud Name
$azureCloudName = az cloud list --query "[?isActive].name" -o tsv

# Define Cloud Management URL bsaed on Azure Cloud Name
if ($azureCloudName -eq 'azurecloud') {
    $azureCloudManagementPrefix = 'https://management.azure.com'
} elseif ($azureCloudName -eq 'azureusgovernment') {    
    $azureCloudManagementPrefix = 'https://management.usgovcloudapi.net'    
}

# Elevate Access for Global Administrator - Which grants the "User Access Administrator" role at root scope (/).
Write-Host "Elevating Access for Global Administrator ..." -ForegroundColor Yellow
$signedInUserUpn = az ad signed-in-user show --query userPrincipalName -o tsv
az rest --method post --url "/providers/Microsoft.Authorization/elevateAccess?api-version=2016-07-01"

# Check to see if Elevation of Access for Global Administrator is successful or not
$elevatedAccess = az role assignment list --role "User Access Administrator" --scope "/" --query "[?contains(principalName, '$signedInUserUpn')]" | ConvertFrom-Json
If ($elevatedAccess.roleDefinitionName -eq "User Access Administrator") {
    Write-Host "`t Successfully Elevated Access for Global Administrator" -ForegroundColor Green
} else {
    Write-Host "`t Failed to Elevate Access for Global Administrator" -ForegroundColor Red
}

# Retrieving and storing info on EntraID Tenant (id) and Tenant Root Management (name, id)
$tenantid = "$(az account list --only-show-errors --query "[?isDefault].homeTenantId" -o tsv)"
$mgmtgroups = az account management-group list --query "[?contains(name, '$tenantid')]" -o jsonc
$mgmtgroupname = ($mgmtgroups | convertfrom-json).name
$mgmtgroupid = ($mgmtgroups | convertfrom-json).id

# Create Owner role assignment at Tenant Root Group if it does not exist
Write-Host "Checking to see if you have Owner role assignment at Tenant Root Group ..." -ForegroundColor Yellow
$ownerRole = az role assignment list --role "Owner" --scope $mgmtgroupid --query "[?contains(principalName, '$signedInUserUpn')]" | ConvertFrom-Json
If ($ownerRole.roleDefinitionName -eq "Owner") {
    Write-Host "`t You already have Owner role assignment at Tenant Root Group" -ForegroundColor Green
} else {
    Write-Host "`t You don't have Owner role assignment at Tenant Root Group ... " -ForegroundColor Red
    Write-Host "`t `t Creating Owner role assignment at Tenant Root Group ..." -ForegroundColor Green
    az role assignment create --assignee $signedInUserUpn --role "Owner" --scope $mgmtgroupid -o none
    $ownerRoleAssignment = az role assignment list --role "Owner" --scope $mgmtgroupid --query "[?contains(principalName, '$signedInUserUpn')]" | ConvertFrom-Json
    If ($ownerRoleAssignment.roleDefinitionName -eq "Owner") {
        Write-Host "`t `t Successfully created Owner role assignment at Tenant Root Group" -ForegroundColor Green
    } else {
        Write-Host "`t `t Failed to create Owner role assignment at Tenant Root Group" -ForegroundColor Red
    }
}


# Name of Custom Policy Definition
$policyName = "JWCC Curated Catalog - Allowed Resources Types"
$description = "Resources allowed based on Azure Policy file."
$displayname = "JWCC Curated Catalog - Allowed Resources Types"
# Azure command to create policy - Base builtin policy replicated - Allowed resource types
Write-Host "Creating Azure Policy Definition ..." -ForegroundColor Yellow
$policyDefinition = az policy definition create --name $policyName --mode All --management-group $tenantid --description $description --display-name $displayname --metadata category="General" version="1.0.0" --rules $folderPath"Curated_Portal_PolicyDefinition.json" --params $folderPath"Parameters.json" | ConvertFrom-Json 
If ($policyDefinition.name -eq $policyName) {
    Write-Host "`t `t Successfully created Azure Policy Definition at Tenant Root Group" -ForegroundColor Green
} else {
    Write-Host "`t `t Failed to create Azure Policy Definition at Tenant Root Group" -ForegroundColor Red
}
Pause

Write-Host "Registering Microsoft.PolicyInsights Resource Provider at Tenant Root Group ..." -ForegroundColor Yellow
# Register Microsoft.PolicyInsights resource provider at Tenant Root Group using "az rest method"
az rest --method post --uri "$($azureCloudManagementPrefix)/providers/Microsoft.Management/managementGroups/$($mgmtgroupname)/providers/Microsoft.PolicyInsights/register?api-version=2022-03-01"
$providerRegistration = az rest --method get --uri "$($azureCloudManagementPrefix)/providers/Microsoft.PolicyInsights?api-version=2024-03-01" | ConvertFrom-Json
If ($providerRegistration.namespace -eq "Microsoft.PolicyInsights") {
    Write-Host "`t `t Successfully registered Microsoft.PolicyInsights Resource Provider at Tenant Root Group" -ForegroundColor Green
} else {
    Write-Host "`t `t Failed to register Microsoft.PolicyInsights Resource Provider at Tenant Root Group" -ForegroundColor Red
}

Pause

Write-Host "Creating Azure Policy Assignment ..." -ForegroundColor Yellow
# Service Catalog Policy Creation/Assignment
$cc_policy_name = "'JWCC Curated Catalog - Allowed Resources Types'"
$cc_assignment_name = "JWCC Curated Catalog"  # https://github.com/Azure/azure-cli/issues/29400 ((InvalidPolicyAssignmentName) az policy assignment create --name should be consistent with portal and back-end service)

#Create new Policy Assignment
$policy = az policy definition list --query "[?contains(displayName, $cc_policy_name)]" -o jsonc
$policyid = ($policy | ConvertFrom-Json).id 
az policy assignment create --name $cc_assignment_name --policy $policyid --scope $mgmtgroupid --params $folderPath$allowListFileName

# Remove Owner role assignment at Tenant Root Group
Write-Host "Removing Owner role assignment at Tenant Root Group ..." -ForegroundColor Yellow
az role assignment delete --assignee $signedInUserUpn --role "Owner" --scope $mgmtgroupid
$ownerRoleAssignment = az role assignment list --role "Owner" --scope $mgmtgroupid --query "[?contains(principalName, '$signedInUserUpn')]" | ConvertFrom-Json
If ($ownerRoleAssignment.roleDefinitionName -ne "Owner") {
    Write-Host "`t `t Successfully removed Owner role assignment at Tenant Root Group" -ForegroundColor Green
} else {
    Write-Host "`t `t Failed to remove Owner role assignment at Tenant Root Group" -ForegroundColor Red
}

# Remove Elevated Access for Global Administrator
Write-Host "Removing Elevated Access for Global Administrator ..." -ForegroundColor Yellow
az role assignment delete --assignee $signedInUserUpn --role "User Access Administrator" --scope "/"
$elevatedAccess = az role assignment list --role "User Access Administrator" --scope "/" --query "[?contains(principalName, '$signedInUserUpn')]" | ConvertFrom-Json
If ($elevatedAccess.roleDefinitionName -ne "User Access Administrator") {
    Write-Host "`t Successfully Removed Elevated Access for Global Administrator" -ForegroundColor Green
} else {
    Write-Host "`t Failed to Remove Elevated Access for Global Administrator" -ForegroundColor Red
}


#Update exisiting policy assignment - Currently excluded
#az policy assignment update --name $cc_assignment_name --scope $mgmtgroupid --params $allowListFileName

<#
.Synopsis
    This script will create a custom policy definition for the JWCC Curated Catalog based on the Allowed resource types and register the PolicyInsights Provider at the Tenant Root Group as well as create a policy assignment to the Tenant Root Group.
.DESCRIPTION
    This script will create a custom policy definition for the JWCC Curated Catalog based on the Allowed resource types and register the PolicyInsights Provider at the Tenant Root Group as well as create a policy assignment to the Tenant Root Group.
.EXAMPLE 
   curatedcatalog.ps1 -folderPath "c:\users\test" -azureCloudName "AzureUSGovernment" -cc_allow_list "JWCC_Gov_Final_June_2024_4.0.json"
.NOTES
    This script leverages a preview API for Azure which may or may not be changed in future releases. 
    Script leverage Azure CLI so you must be logged into Azure CLI in order for this to work.
   
    The following parameters are mandatory:
    -folderPath
    -azureCloudName
    -cc_allow_list

#>

param(
   # FolderPath to Azure AD Roles
   [Parameter(Mandatory = $true)]
   [ValidateNotNull()]
   [ValidateNotNullOrEmpty()]
   [String]$folderpath,
   # cloud_suffix
   [Parameter(Mandatory = $true)]
   [ValidateNotNull()]
   [ValidateNotNullOrEmpty()]
   [String]$azureCloudName,

   # cc_allow_list = Path to parameters file of allowed services
   [Parameter(Mandatory = $true)]
   [ValidateNotNull()]
   [ValidateNotNullOrEmpty()]
   [String]$cc_allow_list
   
)

# Define Cloud Management URL bsaed on Azure Cloud Name
if ($azureCloudName -eq 'azurecloud') {
    $azureCloudManagementPrefix = 'https://management.azure.com'
} elseif     ($azureCloudName -eq 'azureusgovernment') {    
    $azureCloudManagementPrefix = 'https://management.usgovcloudapi.net'    
}

Write-Host "Creating Azure Policy Definition" -ForegroundColor Yellow
#Name of Custom Policy Definition
$policyName = "JWCC Curated Catalog - Allowed Resources Types"
$tenantid = "$(az account list --only-show-errors --query "[?isDefault].homeTenantId" -o tsv)"
$description = "Resources allowed based on Azure Policy file."
$displayname = "JWCC Curated Catalog - Allowed Resources Types"
#Azure command to create policy - Base builtin policy replicated - Allowed resource types
az policy definition create --name $policyName --mode All --management-group $tenantid --description $description --display-name $displayname --metadata category="General" version="1.0.0" --rules $folderpath\"Curated_Portal_PolicyDefinition.json" --params $folderpath\"Parameters.json" 

Pause

Write-Host "Registering Microsoft.PolicyInsights Resource Provider at Tenant Root Group" -ForegroundColor Yellow
#Rest POST for Provider Registration at Tenant Root Group
# $mgmtgroups = az account management-group list --query "[?contains(displayName, 'Root')]" -o jsonc
$mgmtgroups = az account management-group list --query "[?contains(name, '$tenantid')]" -o jsonc
$mgmtgroupname = ($mgmtgroups | convertfrom-json).name
$mgmtgroupid = ($mgmtgroups | convertfrom-json).id
az rest --method post --uri "$($azureCloudManagementPrefix)/providers/Microsoft.Management/managementGroups/$($mgmtgroupname)/providers/Microsoft.PolicyInsights/register?api-version=2022-03-01"

Pause

Write-Host "Creating Azure Policy Assignment" -ForegroundColor Yellow
#Service Catalog Policy Creation/Assignment
$cc_policy_name = "'JWCC Curated Catalog - Allowed Resources Types'"
$cc_assignment_name = "JWCC Curated Catalog"  # https://github.com/Azure/azure-cli/issues/29400 ((InvalidPolicyAssignmentName) az policy assignment create --name should be consistent with portal and back-end service)

#Create new Policy Assignment
$policy = az policy definition list --query "[?contains(displayName, $cc_policy_name)]" -o jsonc
$policyid = ($policy | ConvertFrom-Json).id 
az policy assignment create --name $cc_assignment_name --policy $policyid --scope $mgmtgroupid --params $cc_allow_list

#Update exisiting policy assignment - Currently excluded
#az policy assignment update --name $cc_assignment_name --scope $mgmtgroupid --params $cc_allow_list

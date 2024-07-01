<#
.Synopsis
    This script will create a custom policy definition for the Curated Catalog based on the Allowed resource types and register the PolicyInsights Provider at the Tenant Root Group as well as create a policy assignment to the Tenant Root Group.
.DESCRIPTION
    This script will create a custom policy definition for the Curated Catalog based on the Allowed resource types and register the PolicyInsights Provider at the Tenant Root Group as well as create a policy assignment to the Tenant Root Group.
.EXAMPLE 
   curatedcatalog.ps1 -FolderPath "c:\users\test" -cloud_suffix "azure.com" -cc_allow_list "c:\users\test\obx_allowed_services.json"
.NOTES
    This script leverages a preview API for Azure which may or may not be changed in future releases. 
    Script leverage Azure CLI so you must be logged into Azure CLI in order for this to work.
   
    The following parameters are mandatory:
    -FolderPath
    -cloud_suffix
    -cc_allow_list

#>

param(
   # FolderPath to Azure AD Roles
   [Parameter(Mandatory = $true)]
   [ValidateNotNull()]
   [ValidateNotNullOrEmpty()]
   [String]$FolderPath,
   # cloud_suffix
   [Parameter(Mandatory = $true)]
   [ValidateNotNull()]
   [ValidateNotNullOrEmpty()]
   [String]$cloud_suffix,

   # cc_allow_list = Path to parameters file of allowed services
   [Parameter(Mandatory = $true)]
   [ValidateNotNull()]
   [ValidateNotNullOrEmpty()]
   [String]$cc_allow_list
   
)


#Name of Custom Policy Definition
$policyName = "Curated Catalog - Allowed Resources Types"
$tenantid = "$(az account list --only-show-errors --query "[?isDefault].homeTenantId" -o tsv)"
$description = "Resources allowed based on Azure Policy file."
$displayname = "Curated Catalog - Allowed Resource Types"
#Azure command to create policy - Base builtin policy replicated - Allowed resource types
az policy definition create --name $policyName --mode All --management-group $tenantid --description $description --display-name $displayname --metadata category="General" version="1.0.0" --rules $Folderpath\"Curated Catalog Allowed Resources_rules.json" --params $Folderpath\"Curated Catalog Allowed Resources_params.json" 

#Rest POST for Provider Registration at Tenant Root Group
$mgmtgroups = az account management-group list --query "[?contains(displayName, 'Root')]" -o jsonc
$mgmtgroupname = ($mgmtgroups | convertfrom-json).name
$mgmtgroupid = ($mgmtgroups | convertfrom-json).id
az rest --method post --uri "https://management.$($cloud_suffix)/providers/Microsoft.Management/managementGroups/$($mgmtgroupname)/providers/Microsoft.PolicyInsights/register?api-version=2022-03-01"

#Service Catalog Policy Creation/Assignment
$cc_policy_name = "'Curated Catalog - Allowed Resource Types'"
$cc_assignment_name = "Curated Catalog Types"

#Create new Policy Assignment
$policy = az policy definition list --query "[?contains(displayName, $cc_policy_name)]" -o jsonc
$policyid = ($policy | ConvertFrom-Json).id 
az policy assignment create --name $cc_assignment_name --policy $policyid --scope $mgmtgroupid --params $cc_allow_list

#Update exisiting policy assignment - Currently excluded
#az policy assignment update --name $cc_assignment_name --scope $mgmtgroupid --params $cc_allow_list

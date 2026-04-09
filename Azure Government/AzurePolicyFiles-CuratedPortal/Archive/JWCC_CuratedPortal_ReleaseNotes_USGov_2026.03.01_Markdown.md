# JWCC Curated Portal – Release Notes

## Release 2026.03.01

---

### Please visit the following websites to view the full list of Generally Available products in Azure Government:

- **Products By Region**  
  https://azure.microsoft.com/en-us/explore/global-infrastructure/products-by-region/table  
  - _**Note**: Select **Azure Government** from the drop-down menu._

- **Azure Government Product Availability Roadmap**  
  https://learn.microsoft.com/en-us/azure/azure-government/documentation-government-product-roadmap  
  - _**Note**: Products must be Generally Available and IL2 authorized or on Mod 10 to be on the JWCC catalog._

---

## JWCC IDIQ Modification 10 Provision

The services below have been added to the JWCC catalog under the **JWCC IDIQ Mod 10 provision** allowing unauthorized services to be added provided they are scheduled to be submitted to DISA for authorization.

> **These services do NOT carry an authorization and must not be used in a production environment until authorization is reached.**

### Mod 10 Services
- **SQL Server on Azure Virtual Machines**

---

## Curated Portal Experience

Microsoft is currently working to adjust the Azure Portal UI to display a **Disabled** state for any products not in the Catalog.

- **Note**: If a product is **not in the Catalog**, it will be **blocked** for provisioning through the Curated Portal JSON file even if it does not appear as disabled in the Azure Portal UI.

### Support Guidance

If you notice any issues related to the Curated Portal JSON Policy implementation, please file a **Support Request** and include **Curated Portal** in the title.

Common indicators of a Curated Portal issue include:
- An error message stating that an authorized service action is blocked by policy
- A greyed-out button preventing deployment of an authorized service

> **Tip:** Include a screenshot or the full error message text to accelerate incident resolution.

---

## Azure AI Services

### 🚨 Action Required

**The Curated Portal – Azure AI Services definition and parameter files are now available for download.**  
Please apply these files to ensure the correct Azure AI Services experience.

---

## Resource Type / Kind Additions

Resource types and kinds added based on file cleanup and/or cloud updates.

### API Management
- microsoft.apimanagement/service/apis/tools 
- microsoft.apimanagement/service/tenants/apis/tools 
- microsoft.apimanagement/service/workspaces/apis/tools 

### Azure Database for PostgreSQL
- microsoft.dbforpostgresql/flexibleservers/ltrbackup 
- microsoft.dbforpostgresql/flexibleservers/ltrbackupaccess 
- microsoft.dbforpostgresql/flexibleservers/ltrbackupprecheck 
- microsoft.dbforpostgresql/flexibleservers/ltrrestorefinalize 
- microsoft.dbforpostgresql/flexibleservers/ltrrestoreinitialize 
- microsoft.dbforpostgresql/flexibleservers/ltrrestoreprecheck 

### Azure Monitor
- microsoft.operationalinsights/workspaces/query/asimalerteventlogs 
- microsoft.operationalinsights/workspaces/query/awsekslogs 
- microsoft.operationalinsights/workspaces/query/copilotactivity 
- microsoft.operationalinsights/workspaces/query/crowdstrikecases 
- microsoft.operationalinsights/workspaces/query/edgeactionservicelog 
- microsoft.operationalinsights/workspaces/query/qualysknowledgebase
- microsoft.operationalinsights/workspaces/query/wvdmultilinkadd 

### Azure NetApp Files
- microsoft.netapp/netappaccounts/capacitypools/caches/resetsmbpassword 

### Azure Resource Manager
- microsoft.resources/deploymentstackswhatifresults 
- microsoft.resources/deploymentstackswhatifresults/whatif 

### Microsoft Azure Portal - Marketplace 
- microsoft.marketplace/privatestores/collections/offers/contextsview
- microsoft.marketplaceordering/agreements
- microsoft.marketplaceordering/agreements/offers/plans
- microsoft.marketplaceordering/agreements/offers/plans/cancel
- microsoft.marketplaceordering/agreements/offers/plans/sign
- microsoft.marketplaceordering/offertypes/publishers/offers/plans/agreements
- microsoft.marketplaceordering/operations


### Microsoft Defender for Cloud
- microsoft.security/securityconnectors/devops/githubowners/repos/issues

### SQL Server
- microsoft.sql/servers/databases/datawarehousequeries/steps 

### Virtual Machines
- microsoft.compute/galleries/invmaccesscontrolprofiles 
- microsoft.compute/galleries/invmaccesscontrolprofiles/versions 
- microsoft.compute/virtualmachines/diagnosticruncommand 
- microsoft.compute/virtualmachines/diagnosticruncommands 
- microsoft.compute/virtualmachines/setvmhealth
- microsoft.compute/virtualmachinescalesets/setvmhealth 
- microsoft.compute/virtualmachinescalesets/virtualmachines/diagnosticruncommand 
- microsoft.compute/virtualmachinescalesets/virtualmachines/diagnosticruncommands

--- 

## Resource Type / Kind Removals

Resource types and kinds removed based on file cleanup and/or cloud updates.

### API Management
- microsoft.apimanagement/service/workspaces/documentations

### Azure Monitor
- microsoft.monitor/pipelinegroups/executetransform

### Azure Virtual Desktop
- microsoft.desktopvirtualization/connectionpolicies

### Microsoft Defender for Cloud
- microsoft.security/securityconnectors/devops/azuredevopsorgs/listavailableprojects 
- microsoft.security/securityconnectors/devops/azuredevopsorgs/projects/listavailablerepos 
- microsoft.security/securityconnectors/devops/githubowners/listavailablerepos 
- microsoft.security/securityconnectors/devops/gitlabgroups/listavailableprojects 
- microsoft.security/securityconnectors/devops/gitlabgroups/listavailablesubgroups

### Microsoft Sentinel
- microsoft.securityinsights/businessapplicationagents 
- microsoft.securityinsights/businessapplicationagents/systems 
- microsoft.securityinsights/businessapplicationagents/systems/listactions 
- microsoft.securityinsights/businessapplicationagents/systems/reportactionstatus 
- microsoft.securityinsights/businessapplicationagents/systems/undoaction 
- microsoft.securityinsights/contenttranslators 
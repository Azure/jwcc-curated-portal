# JWCC Curated Portal – Release Notes

## Release 2026.04.01

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
- **Azure Arc-Enabled SQL Server**
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

### Azure Arc-Enabled Servers
- microsoft.hybridcompute/machines/applications

### Azure Database for MySQL
- microsoft.dbformysql/flexibleservers/upgradeconfigurations

### Azure Monitor
- microsoft.operationalinsights/workspaces/query/ncckubernetesapiauditlogs

### Azure Resource Manager
- microsoft.resources/populateregionalmovetargetresource
- microsoft.resources/relayregionalmoverequest

### Azure Stack
- microsoft.azurestackhci/snapshots
- microsoft.azurestackhci/snapshots/join

### Redis Cache
- microsoft.cache/redisenterprise/migrations/validate 

---

## Resource Type / Kind Removals

Resource types and kinds removed based on file cleanup and/or cloud updates.

### Azure Monitor
- microsoft.alertsmanagement/issues/getinvestigationresult 
- microsoft.operationalinsights/workspaces/query/llmactivity
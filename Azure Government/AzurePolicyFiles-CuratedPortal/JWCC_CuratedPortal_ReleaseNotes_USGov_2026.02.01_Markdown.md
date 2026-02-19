# JWCC Curated Portal – Release Notes

## Release 2026.02.01

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

### Azure App Testing
- microsoft.loadtestservice/loadtests/deletetest
- microsoft.loadtestservice/loadtests/outboundnetworkdependenciesendpoints
- microsoft.loadtestservice/loadtests/readtest
- microsoft.loadtestservice/loadtests/starttest
- microsoft.loadtestservice/loadtests/stoptest
- microsoft.loadtestservice/loadtests/writetest
- microsoft.loadtestservice/locations/operationstatuses
- microsoft.loadtestservice/locations/quotas
- microsoft.loadtestservice/locations/quotas/checkavailability
- microsoft.loadtestservice/operations
- microsoft.loadtestservice/register
- microsoft.loadtestservice/registeredsubscriptions
- microsoft.loadtestservice/testprofileruns
- microsoft.loadtestservice/testprofileruns/stop
- microsoft.loadtestservice/testprofiles
- microsoft.loadtestservice/unregister

### Azure Cosmos DB
- microsoft.documentdb/mongoclusters/promote

### Azure DNS
- microsoft.network/locations/dnsresolverpolicyoperationresults
- microsoft.network/locations/dnsresolverpolicyoperationstatuses

### Azure Monitor
- microsoft.operationalinsights/workspaces/query/agsupdateevents
- microsoft.operationalinsights/workspaces/query/apimanagementgatewaymcplog
- microsoft.operationalinsights/workspaces/query/awsalbaccesslogs
- microsoft.operationalinsights/workspaces/query/awselbflowlogs
- microsoft.operationalinsights/workspaces/query/awsnlbaccesslogs
- microsoft.operationalinsights/workspaces/query/durabletaskschedulerlogs
- microsoft.operationalinsights/workspaces/query/edgeactionconsolelog
- microsoft.operationalinsights/workspaces/query/pgsqlquerystorequerytext
- microsoft.operationalinsights/workspaces/query/ztsrequest

### Azure NetApp Files
- microsoft.netapp/netappaccounts/capacitypools/volumes/updateavsdatastoreinfo

### Azure SQL Managed Instance
- microsoft.sql/managedinstances/distributedavailabilitygroups/adddatabases
- microsoft.sql/managedinstances/distributedavailabilitygroups/removedatabases

### Data Factory
- microsoft.datafactory/factories/linkedservices/upgrade

### Power Apps
- microsoft.resourcenotifications/eventgridfilters
- microsoft.resourcenotifications/operations
- microsoft.resourcenotifications/systemtopics/subscribetoaksresources
- microsoft.resourcenotifications/systemtopics/subscribetoresources

### Redis Cache
- microsoft.cache/locations/migratedacrdnsrecords/purge

### Virtual Network
- microsoft.network/locations/ipampooloperationresults
- microsoft.network/locations/nspservicetags
- microsoft.network/virtualnetworkappliances

---

## Resource Type / Kind Removals

### Azure Synapse Analytics
- microsoft.synapse/locations/kustopoolchecknameavailability
- microsoft.synapse/locations/kustopooloperationresults
- microsoft.synapse/skus
- microsoft.synapse/workspaces/kustopools/addlanguageextensions
- microsoft.synapse/workspaces/kustopools/checknameavailability
- microsoft.synapse/workspaces/kustopools/databases/checknameavailability
- microsoft.synapse/workspaces/kustopools/databases/dataconnectionvalidation
- microsoft.synapse/workspaces/kustopools/databases/invitefollower
- microsoft.synapse/workspaces/kustopools/detachfollowerdatabases
- microsoft.synapse/workspaces/kustopools/listfollowerdatabases
- microsoft.synapse/workspaces/kustopools/listlanguageextensions
- microsoft.synapse/workspaces/kustopools/migrate
- microsoft.synapse/workspaces/kustopools/privateendpointconnectionproxies
- microsoft.synapse/workspaces/kustopools/privateendpointconnectionproxies/validate
- microsoft.synapse/workspaces/kustopools/privateendpointconnections
- microsoft.synapse/workspaces/kustopools/privatelinkresources
- microsoft.synapse/workspaces/kustopools/providers/microsoft.insights/diagnosticsettings
- microsoft.synapse/workspaces/kustopools/providers/microsoft.insights/logdefinitions
- microsoft.synapse/workspaces/kustopools/providers/microsoft.insights/metricdefinitions
- microsoft.synapse/workspaces/kustopools/removelanguageextensions
- microsoft.synapse/workspaces/kustopools/skus
- microsoft.synapse/workspaces/kustopools/start
- microsoft.synapse/workspaces/kustopools/stop

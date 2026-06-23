# JWCC Curated Portal – Release Notes

## Release 2026.06.02

---

### Please visit the following websites to view the full list of Generally Available products in Azure Government:

- **Azure Government Product Availability Roadmap**  
  https://learn.microsoft.com/en-us/azure/azure-government/documentation-government-product-roadmap  
  - _**Note**: Products must be Generally Available and IL2 authorized or on Mod 10 to be on the JWCC catalog._

---

## JWCC IDIQ Modification 10 Provision

The services below have been added to the JWCC catalog under the **JWCC IDIQ Mod 10 provision** allowing unauthorized services to be added provided they are scheduled to be submitted to DISA for authorization.

> **These services do NOT carry an authorization and must not be used in a production environment until authorization is reached.**

### Mod 10 Services
- **Azure Arc-Enabled SQL Server**
- **Azure Cloud HSM**
- **Azure Kubernetes Service enabled by Azure Arc**
- **Azure Virtual Network Managers**
- **SQL Server on Azure Virtual Machines**

---

## Curated Portal Experience

Microsoft is currently working to adjust the Azure Portal UI to display a **Disabled** state for any products not in the Catalog.

- **Note**: If a product is **not in the Catalog**, it will be **blocked** for provisioning through the Curated Portal JSON file even if it does not appear as disabled in the Azure Portal UI.

### Support Guidance

If you notice any issues related to the Curated Portal JSON Policy implementation, please file a **Support Request** and include **Curated Portal** in the title.

Common indicators of a Curated Portal issue include:
- An error message stating that an authorized service action is blocked by policy.
- A greyed-out button preventing deployment of an authorized service.

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
- microsoft.apimanagement/service/languagemodels

### Azure App Configuration
- microsoft.appconfiguration/configurationstores/featureflags
- microsoft.appconfiguration/configurationstores/usesasauth

### Azure Container Apps
- microsoft.app/locations/availablemanagedenvironmentsmodes
- microsoft.app/managedenvironments/runsupportcheck
- microsoft.app/managedenvironments/supportcheckoperations
- microsoft.app/managedenvironments/supportchecks

### Azure Data Transfer
- microsoft.azuredatatransfer/connections
- microsoft.azuredatatransfer/connections/flows
- microsoft.azuredatatransfer/connections/flows/disable
- microsoft.azuredatatransfer/connections/flows/enable
- microsoft.azuredatatransfer/connections/flows/generatepassphrase
- microsoft.azuredatatransfer/connections/flows/getdestinationendpointports
- microsoft.azuredatatransfer/connections/flows/getdestinationendpoints
- microsoft.azuredatatransfer/connections/flows/getsourceaddresses
- microsoft.azuredatatransfer/connections/flows/getstreamconnectionstring
- microsoft.azuredatatransfer/connections/flows/link
- microsoft.azuredatatransfer/connections/flows/setdestinationendpointports
- microsoft.azuredatatransfer/connections/flows/setdestinationendpoints
- microsoft.azuredatatransfer/connections/flows/setpassphrase
- microsoft.azuredatatransfer/connections/flows/setsourceaddresses
- microsoft.azuredatatransfer/connections/link
- microsoft.azuredatatransfer/connections/listpendingconnections
- microsoft.azuredatatransfer/connections/listpendingflows
- microsoft.azuredatatransfer/listapprovedschemas
- microsoft.azuredatatransfer/listflowprofiles
- microsoft.azuredatatransfer/locations/operationstatuses
- microsoft.azuredatatransfer/operations
- microsoft.azuredatatransfer/pipelines/approveconnection
- microsoft.azuredatatransfer/pipelines/connections/flows/list
- microsoft.azuredatatransfer/pipelines/connections/list
- microsoft.azuredatatransfer/pipelines
- microsoft.azuredatatransfer/pipelines/executeaction
- microsoft.azuredatatransfer/pipelines/flowprofiles
- microsoft.azuredatatransfer/pipelines/listflows
- microsoft.azuredatatransfer/pipelines/listschemas
- microsoft.azuredatatransfer/pipelines/quarantine/object/download
- microsoft.azuredatatransfer/pipelines/quarantine/object/download/status
- microsoft.azuredatatransfer/pipelines/quarantine/object/jobs/list
- microsoft.azuredatatransfer/pipelines/quarantine/object/list
- microsoft.azuredatatransfer/pipelines/quarantine/object/reject
- microsoft.azuredatatransfer/pipelines/quarantine/object/release
- microsoft.azuredatatransfer/pipelines/rejectconnection
- microsoft.azuredatatransfer/register
- microsoft.azuredatatransfer/unregister
- microsoft.azuredatatransfer/validateschema

### Azure Monitor : Log Analytics
- microsoft.operationalinsights/workspaces/query/aadriskyagents
- microsoft.operationalinsights/workspaces/query/adgsyslogevent
- microsoft.operationalinsights/workspaces/query/amahealth
- microsoft.operationalinsights/workspaces/query/anftopclientreadiops
- microsoft.operationalinsights/workspaces/query/anftopclientwriteiops
- microsoft.operationalinsights/workspaces/query/anftopfilereadiops
- microsoft.operationalinsights/workspaces/query/anftopfilewriteiops
- microsoft.operationalinsights/workspaces/query/asimagenteventlogs
- microsoft.operationalinsights/workspaces/query/asimassetentitylogs
- microsoft.operationalinsights/workspaces/query/azuresqlautomatictuning
- microsoft.operationalinsights/workspaces/query/azuresqlblocks
- microsoft.operationalinsights/workspaces/query/azuresqldatabasewaitstatistics
- microsoft.operationalinsights/workspaces/query/azuresqldeadlocks
- microsoft.operationalinsights/workspaces/query/azuresqlerrors
- microsoft.operationalinsights/workspaces/query/azuresqlquerystoreruntimestatistics
- microsoft.operationalinsights/workspaces/query/azuresqlquerystorewaitstatistics
- microsoft.operationalinsights/workspaces/query/azuresqlresourceusagestats
- microsoft.operationalinsights/workspaces/query/azuresqltimeouts
- microsoft.operationalinsights/workspaces/query/cloudauditevents
- microsoft.operationalinsights/workspaces/query/clouddnsevents
- microsoft.operationalinsights/workspaces/query/cloudprocessevents
- microsoft.operationalinsights/workspaces/query/cloudstorageaggregatedevents
- microsoft.operationalinsights/workspaces/query/devicecustomregistryevents
- microsoft.operationalinsights/workspaces/query/disruptionandresponseevents
- microsoft.operationalinsights/workspaces/query/identityaccountinfo
- microsoft.operationalinsights/workspaces/query/identityevents
- microsoft.operationalinsights/workspaces/query/ledgertransactionlogs
- microsoft.operationalinsights/workspaces/query/ledgeruserdefinedlogs
- microsoft.operationalinsights/workspaces/query/messageevents
- microsoft.operationalinsights/workspaces/query/messagepostdeliveryevents
- microsoft.operationalinsights/workspaces/query/messageurlinfo
- microsoft.operationalinsights/workspaces/query/microsoftgraphpolicylogs
- microsoft.operationalinsights/workspaces/query/ntansprulerecommendation
- microsoft.operationalinsights/workspaces/query/oauthappinfo
- microsoft.operationalinsights/workspaces/query/quantumprovideraccountjobauditlogs
- microsoft.operationalinsights/workspaces/query/quantumprovideraccountqueueauditlogs
- microsoft.operationalinsights/workspaces/query/quantumprovideraccounttargetauditlogs
- microsoft.operationalinsights/workspaces/query/quantumworkspacejobauditlogs
- microsoft.operationalinsights/workspaces/query/salesforceaudittrail
- microsoft.operationalinsights/workspaces/query/salesforceloginhistory
- microsoft.operationalinsights/workspaces/query/securitycaseevent
- microsoft.operationalinsights/workspaces/query/storagemoverauditlogs
- microsoft.operationalinsights/workspaces/query/ztsjobstatus
- microsoft.operationalinsights/workspaces/tables/protectionlevel

### Azure NetApp Files
- microsoft.netapp/netappaccounts/capacitypools/volumes/listremotecaches

### Azure Virtual Desktop
- microsoft.desktopvirtualization/repositoryfolders/listrepositoryapplications
- microsoft.desktopvirtualization/repositoryfolders/repositoryintegrations/listrepositoryapplicationdetails

### Azure Web PubSub
- microsoft.signalrservice/webpubsub/chat/conversation
- microsoft.signalrservice/webpubsub/chat/message
- microsoft.signalrservice/webpubsub/chat/role
- microsoft.signalrservice/webpubsub/chat/room
- microsoft.signalrservice/webpubsub/chat/user

### Backup
- microsoft.recoveryservices/vaults/backupcrosstenantvaultmappings/vaultcredentials/generate
- microsoft.recoveryservices/vaults/backupcrosstenantvaultmappings/vaultcredentials/operationresults
- microsoft.recoveryservices/vaults/backupcrosstenantvaultmappings/vaultcredentials/operationstatus

### ExpressRoute
- microsoft.network/expressroutecrossconnections/deprovisionconnection
- microsoft.network/expressroutelags/generateloa
- microsoft.network/expressroutelags/join

### Logic Apps
- microsoft.logic/automationprojects/applications
- microsoft.logic/automationprojects/applications/operationstatuses
- microsoft.logic/automationprojects/operationstatuses
- microsoft.logic/automationprojects/principals

### Microsoft Defender for Cloud
- microsoft.security/sqlvulnerabilityassessments

### Microsoft Foundry
- microsoft.cognitiveservices/accounts/healthinsights/patient-timeline/jobs
- microsoft.cognitiveservices/accounts/healthinsights/radiology-insights/jobs
- microsoft.cognitiveservices/accounts/healthinsights/trial-matcher/cosmosdb
- microsoft.cognitiveservices/accounts/healthinsights/trial-matcher/cosmosdb/executeaction
- microsoft.cognitiveservices/accounts/healthinsights/trial-matcher/jobs
- microsoft.cognitiveservices/accounts/managedcomputedeployments
- microsoft.cognitiveservices/accounts/managednetworks
- microsoft.cognitiveservices/accounts/managednetworks/batchoutboundrules
- microsoft.cognitiveservices/accounts/managednetworks/outboundrules
- microsoft.cognitiveservices/accounts/projects/applications
- microsoft.cognitiveservices/accounts/projects/applications/agentdeployments
- microsoft.cognitiveservices/accounts/provisionmanagednetwork
- microsoft.cognitiveservices/accounts/raiifcrules
- microsoft.cognitiveservices/accounts/raitoollabels
- microsoft.cognitiveservices/accounts/raivalidateexternalsafetyprovider
- microsoft.cognitiveservices/locations/managedcomputeusages
- microsoft.cognitiveservices/managedcomputecapacities

### Storage
- microsoft.storage/storageaccounts/privateendpointconnectionproxies/validate

### Traffic Manager
- microsoft.network/trafficmanagerprofiles/validatelink

### Virtual Network
- microsoft.network/applicationsecuritygroups/addressprefixsets
- microsoft.network/applicationsecuritygroups/listaddressprefixsets
- microsoft.network/firstpartyservicetags

---

## Resource Type / Kind Removals

Resource types and kinds removed based on file cleanup and/or cloud updates.

### Azure Database for PostgreSQL
- microsoft.dbforpostgresql/locations/administratorazureasyncoperation
- microsoft.dbforpostgresql/locations/administratoroperationresults
- microsoft.dbforpostgresql/locations/performancetiers
- microsoft.dbforpostgresql/locations/serverkeyazureasyncoperation
- microsoft.dbforpostgresql/locations/serverkeyoperationresults
- microsoft.dbforpostgresql/performancetiers
- microsoft.dbforpostgresql/servers/advisors
- microsoft.dbforpostgresql/servers/advisors/recommendedactions
- microsoft.dbforpostgresql/servers/advisors/recommendedactionsessions
- microsoft.dbforpostgresql/servers/logfiles
- microsoft.dbforpostgresql/servers/performancetiers
- microsoft.dbforpostgresql/servers/privateendpointconnectionproxies
- microsoft.dbforpostgresql/servers/privateendpointconnectionproxies/validate
- microsoft.dbforpostgresql/servers/privateendpointconnectionsapproval
- microsoft.dbforpostgresql/servers/privatelinkresources
- microsoft.dbforpostgresql/servers/providers/microsoft.insights/diagnosticsettings
- microsoft.dbforpostgresql/servers/providers/microsoft.insights/logdefinitions
- microsoft.dbforpostgresql/servers/providers/microsoft.insights/metricdefinitions
- microsoft.dbforpostgresql/servers/querytexts
- microsoft.dbforpostgresql/servers/recoverableservers
- microsoft.dbforpostgresql/servers/replicas
- microsoft.dbforpostgresql/servers/resetqueryperformanceinsightdata
- microsoft.dbforpostgresql/servers/restart
- microsoft.dbforpostgresql/servers/topquerystatistics
- microsoft.dbforpostgresql/servers/updateconfigurations
- microsoft.dbforpostgresql/servers/waitstatistics
- microsoft.dbforpostgresql/serversv2
- microsoft.dbforpostgresql/serversv2/configurations
- microsoft.dbforpostgresql/serversv2/firewallrules
- microsoft.dbforpostgresql/serversv2/providers/microsoft.insights/diagnosticsettings
- microsoft.dbforpostgresql/serversv2/providers/microsoft.insights/logdefinitions
- microsoft.dbforpostgresql/serversv2/providers/microsoft.insights/metricdefinitions
- microsoft.dbforpostgresql/serversv2/updateconfigurations

### Network Watcher
- microsoft.network/networkwatchers/agents/deregister
- microsoft.network/networkwatchers/agents/fetchregistrationinfo

---
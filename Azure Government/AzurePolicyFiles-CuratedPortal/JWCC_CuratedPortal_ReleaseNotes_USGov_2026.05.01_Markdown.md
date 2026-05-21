# JWCC Curated Portal – Release Notes

## Release 2026.05.01

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

### App Service
- microsoft.web/aigateways 
- microsoft.web/aigateways/connections
- microsoft.web/aigateways/mcpserverconfigs
- microsoft.web/aigateways/triggerconfigs
- microsoft.web/connections/accesspolicies
- microsoft.web/serverfarms/startsites
- microsoft.web/serverfarms/stopsites
- microsoft.web/staticsites/networkconfigs 

### Azure Arc-Enabled SQL Server (Mod 10)
- microsoft.azurearcdata/locations/operationstatuses 
- microsoft.azurearcdata/operations
- microsoft.azurearcdata/register
- microsoft.azurearcdata/sqlserveresulicenses
- microsoft.azurearcdata/sqlserverinstances/availabilitygroups/adddatabases
- microsoft.azurearcdata/sqlserverinstances/availabilitygroups
- microsoft.azurearcdata/sqlserverinstances/availabilitygroups/failover
- microsoft.azurearcdata/sqlserverinstances/availabilitygroups/failovermilink
- microsoft.azurearcdata/sqlserverinstances/availabilitygroups/forcefailoverallowdataloss
- microsoft.azurearcdata/sqlserverinstances/availabilitygroups/getdetailview
- microsoft.azurearcdata/sqlserverinstances/availabilitygroups/removedatabases
- microsoft.azurearcdata/sqlserverinstances/createavailabilitygroup
- microsoft.azurearcdata/sqlserverinstances/createdistributedavailabilitygroup
- microsoft.azurearcdata/sqlserverinstances/createmanagedinstancelink
- microsoft.azurearcdata/sqlserverinstances/databases
- microsoft.azurearcdata/sqlserverinstances
- microsoft.azurearcdata/sqlserverinstances/getjobsstatus
- microsoft.azurearcdata/sqlserverinstances/gettelemetry
- microsoft.azurearcdata/sqlserverinstances/postupgrade
- microsoft.azurearcdata/sqlserverinstances/preupgrade
- microsoft.azurearcdata/sqlserverinstances/runmanagedinstancelinkassessment
- microsoft.azurearcdata/sqlserverinstances/runmigrationassessment
- microsoft.azurearcdata/sqlserverlicenses
- microsoft.azurearcdata/unregister

### Azure Communication Service
- microsoft.communication/checknameavailability
- microsoft.communication/communicationservices
- microsoft.communication/communicationservices/eventgridfilters
- microsoft.communication/communicationservices/linknotificationhub
- microsoft.communication/communicationservices/listkeys
- microsoft.communication/communicationservices/networksecurityperimeterassociationproxies
- microsoft.communication/communicationservices/networksecurityperimeterconfigurations
- microsoft.communication/communicationservices networksecurityperimeterconfigurations/reconcile
- microsoft.communication/communicationservices/regeneratekey
- microsoft.communication/communicationservices/smtpusernames
- microsoft.communication/communicationservicesgccm
- microsoft.communication/communicationservicesgccm/eventgridfilters
- microsoft.communication/communicationservicesgccm/linknotificationhub
- microsoft.communication/communicationservicesgccm/listkeys
- microsoft.communication/communicationservicesgccm/regeneratekey
- microsoft.communication/emailservices
- microsoft.communication/emailservices/domains
- microsoft.communication/emailservices/domains/cancelverification
- microsoft.communication/emailservices/domains/initiateverification
- microsoft.communication/emailservices/domains/revokeverification
- microsoft.communication/emailservices/domains/senderusernames
- microsoft.communication/emailservices/domains/suppressionlists
- microsoft.communication/emailservices/domains/suppressionlists/suppressionlistaddresses
- microsoft.communication/emailservices/verifiedexchangeonlinedomains
- microsoft.communication/locations/notifynetworksecurityperimeterupdatesavailable
- microsoft.communication/locations/operationstatuses
- microsoft.communication/locations/usages
- microsoft.communication/operations
- microsoft.communication/register
- microsoft.communication/registeredsubscriptions
- microsoft.communication/unregister

### Azure Container Apps
- microsoft.app/locations/supportedagentmodels

### Azure Database for PostgreSQL
- microsoft.dbforpostgresql/flexibleservers/maintenanceevents/applynow
- microsoft.dbforpostgresql/flexibleservers/maintenanceevents/getmaintenanceevent
- microsoft.dbforpostgresql/flexibleservers/maintenanceevents/reschedule

### Azure Databricks
- microsoft.databricks/workspaces/dbworkspaces/dbprivateendpointconnections
- microsoft.databricks/workspaces/dbworkspaces/privatelinkresources

### Azure Firewall
- microsoft.network/firewallpolicies/pacfile

### Azure HPC Cache
- microsoft.storagecache/amlfilesystems/expansionjobs

### Azure Local
- microsoft.azurestackhci/clusters/deploymentsettings/deploy
- microsoft.azurestackhci/virtualmachineinstances/guestagents

### Azure Migrate
- microsoft.offazure/mastersites/import
- microsoft.offazure/mastersites/jobs
- microsoft.offazure/mastersites/sqlsites/discoverysitedatasources/operationsstatus

### Azure Monitor
- microsoft.insights/logs/data
- microsoft.operationalinsights/workspaces/query/appgenaicontent
- microsoft.operationalinsights/workspaces/query/automationaccounts
- microsoft.operationalinsights/workspaces/query/azuremonitorpipelinelogerrors
- microsoft.operationalinsights/workspaces/query/azurenetworkcounter
- microsoft.operationalinsights/workspaces/query/azurenetworkevent
- microsoft.operationalinsights/workspaces/query/boundport
- microsoft.operationalinsights/workspaces/query/capacity_arrayutilization
- microsoft.operationalinsights/workspaces/query/capacity_smbshareutilization
- microsoft.operationalinsights/workspaces/query/capacity_smbutilizationbyhost
- microsoft.operationalinsights/workspaces/query/compatapp
- microsoft.operationalinsights/workspaces/query/compatcomputer
- microsoft.operationalinsights/workspaces/query/compatdriver
- microsoft.operationalinsights/workspaces/query/compatsysreqissue
- microsoft.operationalinsights/workspaces/query/configurationalert
- microsoft.operationalinsights/workspaces/query/configurationobject
- microsoft.operationalinsights/workspaces/query/configurationobjectproperty
- microsoft.operationalinsights/workspaces/query/devicesleepstate
- microsoft.operationalinsights/workspaces/query/dhappfailure
- microsoft.operationalinsights/workspaces/query/genevacounterwebrequestinfo
- microsoft.operationalinsights/workspaces/query/inboundconnection
- microsoft.operationalinsights/workspaces/query/keyvaultauditevent
- microsoft.operationalinsights/workspaces/query/madevicepnphealth
- microsoft.operationalinsights/workspaces/query/madevicepnphealthalternativeversions
- microsoft.operationalinsights/workspaces/query/madevicepnphealthissues
- microsoft.operationalinsights/workspaces/query/maofficeaddinentityhealth
- microsoft.operationalinsights/workspaces/query/maofficeaddinhealth
- microsoft.operationalinsights/workspaces/query/maofficeaddinhealthissues
- microsoft.operationalinsights/workspaces/query/maofficeaddininstancereadiness
- microsoft.operationalinsights/workspaces/query/maofficeapp
- microsoft.operationalinsights/workspaces/query/maofficeappcrashesnrt
- microsoft.operationalinsights/workspaces/query/maofficeapphealth
- microsoft.operationalinsights/workspaces/query/maofficeappinstancehealth
- microsoft.operationalinsights/workspaces/query/maofficeappsessionsnrt
- microsoft.operationalinsights/workspaces/query/maofficecurrencyassessmentdailycounts
- microsoft.operationalinsights/workspaces/query/maofficedeploymentstatus 
- icrosoft.operationalinsights/workspaces/query/maofficemacroerrornrt 
- microsoft.operationalinsights/workspaces/query/maofficemacroglobalhealth 
- microsoft.operationalinsights/workspaces/query/maofficemacrohealth 
- microsoft.operationalinsights/workspaces/query/maofficemacrohealthissues 
- microsoft.operationalinsights/workspaces/query/maofficemacroissueinstancereadiness 
- microsoft.operationalinsights/workspaces/query/maofficemacroissuereadiness 
- microsoft.operationalinsights/workspaces/query/maofficemacrosummary 
- microsoft.operationalinsights/workspaces/query/maofficesuite 
- microsoft.operationalinsights/workspaces/query/mawindowssysreqinstancereadiness 
- microsoft.operationalinsights/workspaces/query/networkapplicationgateways 
- microsoft.operationalinsights/workspaces/query/networksecuritygroups 
- microsoft.operationalinsights/workspaces/query/outboundconnection 
- microsoft.operationalinsights/workspaces/query/perfhourly 
- microsoft.operationalinsights/workspaces/query/rapid7insightvmcloudassets 
- microsoft.operationalinsights/workspaces/query/rapid7insightvmcloudvulnerabilities 
- microsoft.operationalinsights/workspaces/query/recommendation 
- microsoft.operationalinsights/workspaces/query/requiredupdate 
- microsoft.operationalinsights/workspaces/query/reservedsolrcustomfieldfactv1 
- microsoft.operationalinsights/workspaces/query/reservedsolrcustomlogfact 
- microsoft.operationalinsights/workspaces/query/sentinelalibabacloudapigatewaylogs 
- microsoft.operationalinsights/workspaces/query/sentinelalibabacloudvpcflowlogs 
- microsoft.operationalinsights/workspaces/query/sentinelalibabacloudwaflogs 
- microsoft.operationalinsights/workspaces/query/sentinelimpervawafcloudv2logs 
- microsoft.operationalinsights/workspaces/query/sqlqueryperformance 
- microsoft.operationalinsights/workspaces/query/sqlthreatprotectionloginaudits 
- microsoft.operationalinsights/workspaces/query/surfacehubcalendar 
- microsoft.operationalinsights/workspaces/query/surfacehubconnectsession 
- microsoft.operationalinsights/workspaces/query/surfacehubetw 
- microsoft.operationalinsights/workspaces/query/surfacehubheartbeat 
- microsoft.operationalinsights/workspaces/query/surfacehubskypesignin 
- microsoft.operationalinsights/workspaces/query/synapseintegrationactivityrunsended 
- microsoft.operationalinsights/workspaces/query/synapseintegrationpipelinerunsended 
- microsoft.operationalinsights/workspaces/query/synapseintegrationtriggerrunsended 
- microsoft.operationalinsights/workspaces/query/sysmonevent 
- microsoft.operationalinsights/workspaces/query/tad_etwtrace 
- microsoft.operationalinsights/workspaces/query/tad_event 
- microsoft.operationalinsights/workspaces/query/tad_fileupload 
- microsoft.operationalinsights/workspaces/query/tad_hostutilizationhourly 
- microsoft.operationalinsights/workspaces/query/tad_mhutilizationagghourly 
- microsoft.operationalinsights/workspaces/query/tad_mhutilizationrawhourly 
- microsoft.operationalinsights/workspaces/query/tad_performance 
- microsoft.operationalinsights/workspaces/query/tad_performancehourly 
- microsoft.operationalinsights/workspaces/query/tad_performanceraw 
- microsoft.operationalinsights/workspaces/query/tad_reliabilityhourly
- microsoft.operationalinsights/workspaces/query/tad_smbshareutilizationhourly
- microsoft.operationalinsights/workspaces/query/uahardwaresecurity
- microsoft.operationalinsights/workspaces/query/updateagent

### Azure NetApp Files
- microsoft.netapp/netappaccounts/capacitypools/caches/breakfilelocks
- microsoft.netapp/netappaccounts/capacitypools/caches/modifyclusterpeer
- microsoft.netapp/netappaccounts/capacitypools/volumes/resetsmbpassword
- microsoft.netapp/netappaccounts/refreshldapbindpassword

### Azure SQL Managed Instance
- microsoft.sql/managedinstances/topdatabases
- microsoft.sql/managedinstances/topqueries

### Azure Virtual Network Manager (Mod 10)
- microsoft.network/networkmanagers/ipampools/listassociatedresources
- microsoft.network/networkmanagers/ipampools/staticcidrs

### Backup
- microsoft.recoveryservices/vaults/backupcrosstenantvaultmappings
- microsoft.recoveryservices/vaults/backupcrosstenantvaultmappings/backupfabrics/protectioncontainers/protecteditems
- microsoft.recoveryservices/vaults/backupcrosstenantvaultmappings/backupfabrics/protectioncontainers/protecteditems/operationresults
- microsoft.recoveryservices/vaults/backupcrosstenantvaultmappings/backupfabrics/protectioncontainers/protecteditems/operationsstatus
- microsoft.recoveryservices/vaults/backupcrosstenantvaultmappings/backupfabrics/protectioncontainers/protecteditems/recoverypoints
- microsoft.recoveryservices/vaults/backupcrosstenantvaultmappings/backupfabrics/protectioncontainers/protecteditems/recoverypoints/restore
- microsoft.recoveryservices/vaults/backupcrosstenantvaultmappings/backupjobs
- microsoft.recoveryservices/vaults/backupcrosstenantvaultmappings/backupprotecteditems
- microsoft.recoveryservices/vaults/backupcrosstenantvaultmappings/backuptriggervalidateoperation
- microsoft.recoveryservices/vaults/backupcrosstenantvaultmappings/backupvalidateoperation
- microsoft.recoveryservices/vaults/backupcrosstenantvaultmappings/backupvalidateoperationresults
- microsoft.recoveryservices/vaults/backupcrosstenantvaultmappings/backupvalidateoperationsstatuses
- microsoft.recoveryservices/vaults/backupcrosstenantvaultmappings/remove
- microsoft.recoveryservices/vaults/backupcrosstenantvaultmappingstatus

### ExpressRoute
- microsoft.network/expressroutecrossconnections/confirmactivationkey
- microsoft.network/expressroutecrossconnections/features
- microsoft.network/expressroutecrossconnections/notifyconnectionstatus
- microsoft.network/expressroutecrossconnections/proposeinterconnect
- microsoft.network/expressroutelags

### Logic Apps
- microsoft.logic/automationprojects

### Virtual Machines
- microsoft.compute/interconnectblocks
- microsoft.compute/interconnectblocks/deploy

### Virtual Network
- microsoft.network/interconnectgroups
- microsoft.network/interconnectgroups/subgroups
- microsoft.network/locations/setlbbackendadminstate

### Virtual WAN
- microsoft.network/networkvirtualappliances/getvmssresourceid

### VPN Gateway
- microsoft.network/virtualnetworkgateways/geteffectiveroutes
---

## Resource Type / Kind Removals

Resource types and kinds removed based on file cleanup and/or cloud updates.

Products marked with an asterisk denote policy file maintenance only and do not represent an environmental change.

### App Service*
- microsoft.certificateregistration/certificateorders 
- microsoft.certificateregistration/certificateorders/certificates
- microsoft.certificateregistration/certificateorders/reissue
- microsoft.certificateregistration/certificateorders/renew
- microsoft.certificateregistration/certificateorders/resendemail
- microsoft.certificateregistration/certificateorders/resendrequestemails
- microsoft.certificateregistration/certificateorders/retrievecertificateactions
- microsoft.certificateregistration/certificateorders/retrievecontactinfo
- microsoft.certificateregistration/certificateorders/retrieveemailhistory
- microsoft.certificateregistration/certificateorders/verifydomainownership
- microsoft.certificateregistration/operations
- microsoft.certificateregistration/provisionglobalappserviceprincipalinusertenant
- microsoft.certificateregistration/register
- microsoft.certificateregistration/validatecertificateregistrationinformation
- microsoft.domainregistration/checkdomainavailability
- microsoft.domainregistration/domains
- microsoft.domainregistration/domains/domainownershipidentifiers
- microsoft.domainregistration/domains/operationresults
- microsoft.domainregistration/domains/renew
- microsoft.domainregistration/domains/retrievecontactinfo
- microsoft.domainregistration/domains/verifyregistrantemail
- microsoft.domainregistration/listdomainrecommendations
- microsoft.domainregistration/operations
- microsoft.domainregistration/register
- microsoft.domainregistration/topleveldomains
- microsoft.domainregistration/topleveldomains/listagreements
- microsoft.domainregistration/validatedomainregistrationinformation

### Azure Cloud HSM
- microsoft.hardwaresecuritymodules/cloudhsmclusters/backup
- microsoft.hardwaresecuritymodules/cloudhsmclusters/backupoperationstatus
- microsoft.hardwaresecuritymodules/cloudhsmclusters/privateendpointconnectionsapproval
- microsoft.hardwaresecuritymodules/cloudhsmclusters/restore
- microsoft.hardwaresecuritymodules/cloudhsmclusters/restoreoperationstatus
- microsoft.hardwaresecuritymodules/cloudhsmclusters/validatebackupproperties
- microsoft.hardwaresecuritymodules/cloudhsmclusters/validaterestoreproperties

### Azure Container Apps
- microsoft.app/connectedenvironments

### Azure Database for MySQL*
- microsoft.mysqldiscovery/locations/operationstatuses 
- microsoft.mysqldiscovery/mysqlsites
- microsoft.mysqldiscovery/mysqlsites/errorsummaries
- microsoft.mysqldiscovery/mysqlsites/mysqlservers
- microsoft.mysqldiscovery/mysqlsites/refresh
- microsoft.mysqldiscovery/mysqlsites/summaries
- microsoft.mysqldiscovery/operations
- microsoft.mysqldiscovery/register
- microsoft.mysqldiscovery/unregister

### Azure DNS Private Resolver
- microsoft.network/locations/dnsresolverpolicyoperationresults
- microsoft.network/locations/dnsresolverpolicyoperationstatuses

### Azure Health Data Services*
- microsoft.healthdataaiservices/deidservices 
- microsoft.healthdataaiservices/deidservices/batch
- microsoft.healthdataaiservices/deidservices/privateendpointconnectionproxies
- microsoft.healthdataaiservices/deidservices/privateendpointconnectionproxies/validate
- microsoft.healthdataaiservices/deidservices/privateendpointconnections
- microsoft.healthdataaiservices/deidservices/privatelinkresources
- microsoft.healthdataaiservices/deidservices/realtime
- microsoft.healthdataaiservices/locations/operationstatuses
- microsoft.healthdataaiservices/operations
- microsoft.healthdataaiservices/register
- microsoft.healthdataaiservices/unregister

### Azure Kubernetes Service enabled by Azure Arc
- microsoft.hybridcontainerservice/provisionedclusters
- microsoft.hybridcontainerservice/provisionedclusters/agentpools
- microsoft.hybridcontainerservice/provisionedclusters/hybrididentitymetadata
- microsoft.hybridcontainerservice/provisionedclusters/listclusteradmincredential
- microsoft.hybridcontainerservice/provisionedclusters/listclusterusercredential
- microsoft.hybridcontainerservice/provisionedclusters/upgradenodeimageversionforentirecluster
- microsoft.hybridcontainerservice/provisionedclusters/upgradeprofiles
- microsoft.hybridcontainerservice/storagespaces

### Azure Lab Services*
- microsoft.labservices/labaccounts
- microsoft.labservices/labaccounts/createlab
- microsoft.labservices/labaccounts/galleryimages
- microsoft.labservices/labaccounts/getpricingandavailability
- microsoft.labservices/labaccounts/getregionalavailability
- microsoft.labservices/labaccounts/getrestrictionsandusage
- microsoft.labservices/labaccounts/labs
- microsoft.labservices/labaccounts/labs/addusers
- microsoft.labservices/labaccounts/labs/environmentsettings
- microsoft.labservices/labaccounts/labs/environmentsettings/environments
- microsoft.labservices/labaccounts/labs/environmentsettings/environments/resetpassword
- microsoft.labservices/labaccounts/labs/environmentsettings/environments/start
- microsoft.labservices/labaccounts/labs/environmentsettings/environments/stop
- microsoft.labservices/labaccounts/labs/environmentsettings/publish
- microsoft.labservices/labaccounts/labs/environmentsettings/resetpassword
- microsoft.labservices/labaccounts/labs/environmentsettings/saveimage
- microsoft.labservices/labaccounts/labs/environmentsettings/schedules
- microsoft.labservices/labaccounts/labs/environmentsettings/start
- microsoft.labservices/labaccounts/labs/environmentsettings/stop
- microsoft.labservices/labaccounts/labs/getlabpricingandavailability
- microsoft.labservices/labaccounts/labs/sendemail
- microsoft.labservices/labaccounts/labs/syncuserlist
- microsoft.labservices/labaccounts/labs/users
- microsoft.labservices/labaccounts/sharedgalleries
- microsoft.labservices/labaccounts/sharedimages
- microsoft.labservices/labplans
- microsoft.labservices/labplans/createlab
- microsoft.labservices/labplans/images
- microsoft.labservices/labplans/saveimage
- microsoft.labservices/labs
- microsoft.labservices/labs/publish
- microsoft.labservices/labs/schedules
- microsoft.labservices/labs/syncgroup
- microsoft.labservices/labs/users
- microsoft.labservices/labs/users/invite
- microsoft.labservices/labs/virtualmachines
- microsoft.labservices/labs/virtualmachines/redeploy
- microsoft.labservices/labs/virtualmachines/reimage
- microsoft.labservices/labs/virtualmachines/resetpassword
- microsoft.labservices/labs/virtualmachines/start
- microsoft.labservices/labs/virtualmachines/stop
- microsoft.labservices/locations/operationresults
- microsoft.labservices/locations/operations
- microsoft.labservices/locations/usages
- microsoft.labservices/register
- microsoft.labservices/skus
- microsoft.labservices/unregister
- microsoft.labservices/users/listallenvironments
- microsoft.labservices/users/register
- microsoft.labservices/users/resetpassword
- microsoft.labservices/users/startenvironment
- microsoft.labservices/users/stopenvironment
- microsoft.labservices/users/usersettings

### Azure Load Balancer
- microsoft.network/loadbalancers/providers/microsoft.insights/diagnosticsettings
- microsoft.network/loadbalancers/providers/microsoft.insights/logdefinitions

### Azure Local
- microsoft.azurestackhci/clusters/wacloginasadmin 
- microsoft.azurestackhci/edgedevices/jobs
- microsoft.azurestackhci/virtualmachines
- microsoft.azurestackhci/virtualmachines/restart
- microsoft.azurestackhci/virtualmachines/start
- microsoft.azurestackhci/virtualmachines/stop
- microsoft.azurestackhci/virtualmachines/wacloginasadmin

### Azure Monitor
- microsoft.operationalinsights/workspaces/query/dsmazureblobstoragelogs

### Azure Resource Manager*
- microsoft.classiccompute/capabilities
- microsoft.classiccompute/checkdomainnameavailability
- microsoft.classiccompute/domainnames
- microsoft.classiccompute/domainnames/active
- microsoft.classiccompute/domainnames/availabilitysets
- microsoft.classiccompute/domainnames/capabilities
- microsoft.classiccompute/domainnames/deploymentslots
- microsoft.classiccompute/domainnames/deploymentslots/roles
- microsoft.classiccompute/domainnames/deploymentslots/roles/roleinstances
- microsoft.classiccompute/domainnames/deploymentslots/state
- microsoft.classiccompute/domainnames/deploymentslots/upgradedomain
- microsoft.classiccompute/domainnames/extensions
- microsoft.classiccompute/domainnames/extensions/operationstatuses
- microsoft.classiccompute/domainnames/internalloadbalancers
- microsoft.classiccompute/domainnames/loadbalancedendpointsets
- microsoft.classiccompute/domainnames/loadbalancedendpointsets/operationstatuses
- microsoft.classiccompute/domainnames/operationstatuses
- microsoft.classiccompute/domainnames/servicecertificates
- microsoft.classiccompute/domainnames/servicecertificates/operationstatuses
- microsoft.classiccompute/domainnames/slots
- microsoft.classiccompute/domainnames/slots/abortmigration
- microsoft.classiccompute/domainnames/slots/commitmigration
- microsoft.classiccompute/domainnames/slots/operationstatuses
- microsoft.classiccompute/domainnames/slots/preparemigration
- microsoft.classiccompute/domainnames/slots/roles
- microsoft.classiccompute/domainnames/slots/roles/extensionreferences
- microsoft.classiccompute/domainnames/slots/roles/extensionreferences/operationstatuses
- microsoft.classiccompute/domainnames/slots/roles/metricdefinitions
- microsoft.classiccompute/domainnames/slots/roles/metrics
- microsoft.classiccompute/domainnames/slots/roles/operationstatuses
- microsoft.classiccompute/domainnames/slots/roles/providers/microsoft.insights/diagnosticsettings
- microsoft.classiccompute/domainnames/slots/roles/providers/microsoft.insights/metricdefinitions
- microsoft.classiccompute/domainnames/slots/roles/roleinstances
- microsoft.classiccompute/domainnames/slots/roles/roleinstances/downloadremotedesktopconnectionfile
- microsoft.classiccompute/domainnames/slots/roles/roleinstances/operationstatuses
- microsoft.classiccompute/domainnames/slots/roles/roleinstances/rebuild
- microsoft.classiccompute/domainnames/slots/roles/roleinstances/reimage
- microsoft.classiccompute/domainnames/slots/roles/roleinstances/restart
- microsoft.classiccompute/domainnames/slots/roles/skus
- microsoft.classiccompute/domainnames/slots/start
- microsoft.classiccompute/domainnames/slots/state/start
- microsoft.classiccompute/domainnames/slots/state/stop
- microsoft.classiccompute/domainnames/slots/stop
- microsoft.classiccompute/domainnames/slots/upgradedomain
- microsoft.classiccompute/domainnames/slots/validatemigration
- microsoft.classiccompute/domainnames/swap
- microsoft.classiccompute/movesubscriptionresources
- microsoft.classiccompute/operatingsystemfamilies
- microsoft.classiccompute/operatingsystems
- microsoft.classiccompute/operations
- microsoft.classiccompute/operationstatuses
- microsoft.classiccompute/quotas
- microsoft.classiccompute/register
- microsoft.classiccompute/resourcetypes/skus
- microsoft.classiccompute/validatesubscriptionmoveavailability
- microsoft.classiccompute/virtualmachines
- microsoft.classiccompute/virtualmachines/associatednetworksecuritygroups
- microsoft.classiccompute/virtualmachines/associatednetworksecuritygroups/operationstatuses
- microsoft.classiccompute/virtualmachines/asyncoperations
- microsoft.classiccompute/virtualmachines/attachdisk
- microsoft.classiccompute/virtualmachines/capture
- microsoft.classiccompute/virtualmachines/detachdisk
- microsoft.classiccompute/virtualmachines/diagnosticsettings
- microsoft.classiccompute/virtualmachines/disks
- microsoft.classiccompute/virtualmachines/downloadremotedesktopconnectionfile
- microsoft.classiccompute/virtualmachines/extensions
- microsoft.classiccompute/virtualmachines/extensions/operationstatuses
- microsoft.classiccompute/virtualmachines/metricdefinitions
- microsoft.classiccompute/virtualmachines/metrics
- microsoft.classiccompute/virtualmachines/networkinterfaces/associatednetworksecuritygroups
- microsoft.classiccompute/virtualmachines/networkinterfaces/associatednetworksecuritygroups/operationstatuses
- microsoft.classiccompute/virtualmachines/operationstatuses
- microsoft.classiccompute/virtualmachines/performmaintenance
- microsoft.classiccompute/virtualmachines/providers/microsoft.insights/diagnosticsettings
- microsoft.classiccompute/virtualmachines/providers/microsoft.insights/metricdefinitions
- microsoft.classiccompute/virtualmachines/redeploy
- microsoft.classiccompute/virtualmachines/restart
- microsoft.classiccompute/virtualmachines/shutdown
- microsoft.classiccompute/virtualmachines/start
- microsoft.classiccompute/virtualmachines/stop
- microsoft.classicnetwork/expressroutecrossconnections
- microsoft.classicnetwork/expressroutecrossconnections/operationstatuses
- microsoft.classicnetwork/expressroutecrossconnections/peerings
- microsoft.classicnetwork/expressroutecrossconnections/peerings/operationstatuses
- microsoft.classicnetwork/gatewaysupporteddevices
- microsoft.classicnetwork/networksecuritygroups
- microsoft.classicnetwork/networksecuritygroups/operationstatuses
- microsoft.classicnetwork/networksecuritygroups/providers/microsoft.insights/diagnosticsettings
- microsoft.classicnetwork/networksecuritygroups/providers/microsoft.insights/logdefinitions
- microsoft.classicnetwork/networksecuritygroups/securityrules
- microsoft.classicnetwork/networksecuritygroups/securityrules/operationstatuses
- microsoft.classicnetwork/operations
- microsoft.classicnetwork/quotas
- microsoft.classicnetwork/register
- microsoft.classicnetwork/reservedips
- microsoft.classicnetwork/reservedips/join
- microsoft.classicnetwork/reservedips/link
- microsoft.classicnetwork/reservedips/operationstatuses
- microsoft.classicnetwork/virtualnetworks
- microsoft.classicnetwork/virtualnetworks/abortmigration
- microsoft.classicnetwork/virtualnetworks/capabilities
- microsoft.classicnetwork/virtualnetworks/checkipaddressavailability
- microsoft.classicnetwork/virtualnetworks/commitmigration
- microsoft.classicnetwork/virtualnetworks/gateways
- microsoft.classicnetwork/virtualnetworks/gateways/clientrevokedcertificates
- microsoft.classicnetwork/virtualnetworks/gateways/clientrootcertificates
- microsoft.classicnetwork/virtualnetworks/gateways/clientrootcertificates/download
- microsoft.classicnetwork/virtualnetworks/gateways/clientrootcertificates/listpackage
- microsoft.classicnetwork/virtualnetworks/gateways/connections
- microsoft.classicnetwork/virtualnetworks/gateways/connections/connect
- microsoft.classicnetwork/virtualnetworks/gateways/connections/disconnect
- microsoft.classicnetwork/virtualnetworks/gateways/connections/test
- microsoft.classicnetwork/virtualnetworks/gateways/downloaddeviceconfigurationscript
- microsoft.classicnetwork/virtualnetworks/gateways/downloaddiagnostics
- microsoft.classicnetwork/virtualnetworks/gateways/listcircuitservicekey
- microsoft.classicnetwork/virtualnetworks/gateways/listpackage
- microsoft.classicnetwork/virtualnetworks/gateways/operationstatuses
- microsoft.classicnetwork/virtualnetworks/gateways/packages
- microsoft.classicnetwork/virtualnetworks/gateways/startdiagnostics
- microsoft.classicnetwork/virtualnetworks/gateways/stopdiagnostics
- microsoft.classicnetwork/virtualnetworks/join
- microsoft.classicnetwork/virtualnetworks/operationstatuses
- microsoft.classicnetwork/virtualnetworks/peer
- microsoft.classicnetwork/virtualnetworks/preparemigration
- microsoft.classicnetwork/virtualnetworks/remotevirtualnetworkpeeringproxies
- microsoft.classicnetwork/virtualnetworks/subnets/associatednetworksecuritygroups
- microsoft.classicnetwork/virtualnetworks/subnets/associatednetworksecuritygroups/operationstatuses
- microsoft.classicnetwork/virtualnetworks/validatemigration
- microsoft.classicnetwork/virtualnetworks/virtualnetworkpeerings
- microsoft.classicstorage/capabilities
- microsoft.classicstorage/checkstorageaccountavailability
- microsoft.classicstorage/disks
- microsoft.classicstorage/images
- microsoft.classicstorage/images/operationstatuses
- microsoft.classicstorage/operations
- microsoft.classicstorage/osimages
- microsoft.classicstorage/osplatformimages
- microsoft.classicstorage/publicimages
- microsoft.classicstorage/quotas
- microsoft.classicstorage/register
- microsoft.classicstorage/storageaccounts
- microsoft.classicstorage/storageaccounts/abortmigration
- microsoft.classicstorage/storageaccounts/blobservices/providers/microsoft.insights/diagnosticsettings
- microsoft.classicstorage/storageaccounts/blobservices/providers/microsoft.insights/metricdefinitions
- microsoft.classicstorage/storageaccounts/commitmigration
- microsoft.classicstorage/storageaccounts/disks
- microsoft.classicstorage/storageaccounts/disks/operationstatuses
- microsoft.classicstorage/storageaccounts/fileservices/providers/microsoft.insights/diagnosticsettings
- microsoft.classicstorage/storageaccounts/fileservices/providers/microsoft.insights/metricdefinitions
- microsoft.classicstorage/storageaccounts/images
- microsoft.classicstorage/storageaccounts/images/operationstatuses
- microsoft.classicstorage/storageaccounts/listkeys
- microsoft.classicstorage/storageaccounts/operationstatuses
- microsoft.classicstorage/storageaccounts/osimages 
- microsoft.classicstorage/storageaccounts/preparemigration
- microsoft.classicstorage/storageaccounts/providers/microsoft.insights/diagnosticsettings
- microsoft.classicstorage/storageaccounts/providers/microsoft.insights/metricdefinitions
- microsoft.classicstorage/storageaccounts/queueservices/providers/microsoft.insights/diagnosticsettings
- microsoft.classicstorage/storageaccounts/queueservices/providers/microsoft.insights/metricdefinitions
- microsoft.classicstorage/storageaccounts/regeneratekey
- microsoft.classicstorage/storageaccounts/services
- microsoft.classicstorage/storageaccounts/services/diagnosticsettings
- microsoft.classicstorage/storageaccounts/services/metricdefinitions
- microsoft.classicstorage/storageaccounts/services/metrics
- microsoft.classicstorage/storageaccounts/tableservices/providers/microsoft.insights/diagnosticsettings
- microsoft.classicstorage/storageaccounts/tableservices/providers/microsoft.insights/metricdefinitions
- microsoft.classicstorage/storageaccounts/validatemigration
- microsoft.classicstorage/storageaccounts/vmimages
- microsoft.classicstorage/storageaccounts/vmimages/operationstatuses
- microsoft.classicstorage/vmimages
- microsoft.customproviders/associations
- microsoft.customproviders/locations/operationstatuses
- microsoft.customproviders/register
- microsoft.customproviders/resourceproviders
- microsoft.customproviders/resourceproviders/associations
- microsoft.customproviders/resourceproviders/operationstatuses
- microsoft.customproviders/resourceproviders/providers/microsoft.insights/diagnosticsettings
- microsoft.customproviders/resourceproviders/providers/microsoft.insights/logdefinitions
- microsoft.customproviders/resourceproviders/providers/microsoft.insights/metricdefinitions
- microsoft.customproviders/unregister

### Azure Site Recovery*
- microsoft.azurebusinesscontinuity/deletedunifiedprotecteditems
- microsoft.azurebusinesscontinuity/operations
- microsoft.azurebusinesscontinuity/register
- microsoft.azurebusinesscontinuity/unifiedprotecteditems
- microsoft.azurebusinesscontinuity/unregister
- microsoft.datareplication/register
- microsoft.datareplication/replicationfabrics
- microsoft.datareplication/replicationfabrics/fabricagents
- microsoft.datareplication/replicationvaults
- microsoft.datareplication/replicationvaults/alertsettings
- microsoft.datareplication/replicationvaults/protecteditems
- microsoft.datareplication/replicationvaults/protecteditems/recoverypoints
- microsoft.datareplication/replicationvaults/replicationextensions
- microsoft.datareplication/replicationvaults/replicationpolicies

### Azure SQL Managed Instance
- microsoft.sql/managedinstances/distributedavailabilitygroups/adddatabases
- microsoft.sql/managedinstances/distributedavailabilitygroups/removedatabases

### Azure Synapse Analytics
- microsoft.synapse/workspaces/kustopools
- microsoft.synapse/workspaces/kustopools/attacheddatabaseconfigurations
- microsoft.synapse/workspaces/kustopools/databases
- microsoft.synapse/workspaces/kustopools/databases/dataconnections
- microsoft.synapse/workspaces/kustopools/databases/principalassignments
- microsoft.synapse/workspaces/kustopools/principalassignments

### Azure Virtual Desktop*
- microsoft.clouddeviceplatform/operations  
- microsoft.clouddeviceplatform/register  
- microsoft.clouddeviceplatform/unregister

### HDInsight
- microsoft.hdinsight/clusterpools  
- microsoft.hdinsight/clusterpools/availableupgrades  
- microsoft.hdinsight/clusterpools/clusters  
- microsoft.hdinsight/clusterpools/clusters/availableupgrades  
- microsoft.hdinsight/clusterpools/clusters/instanceviews  
- microsoft.hdinsight/clusterpools/clusters/jobs  
- microsoft.hdinsight/clusterpools/clusters/libraries  
- microsoft.hdinsight/clusterpools/clusters/managelibraries  
- microsoft.hdinsight/clusterpools/clusters/resize  
- microsoft.hdinsight/clusterpools/clusters/rollback  
- microsoft.hdinsight/clusterpools/clusters/runjob  
- microsoft.hdinsight/clusterpools/clusters/serviceconfigs  
- microsoft.hdinsight/clusterpools/clusters/upgrade  
- microsoft.hdinsight/clusterpools/clusters/upgradehistories  
- microsoft.hdinsight/clusterpools/upgrade  
- microsoft.hdinsight/clusterpools/upgradehistories  
- microsoft.hdinsight/clusters/availableupgrades  
- microsoft.hdinsight/clusters/azureasyncoperations  
- microsoft.hdinsight/clusters/listhosts  
- microsoft.hdinsight/clusters/operationresults  
- microsoft.hdinsight/clusters/providers/microsoft.insights/diagnosticsettings  
- microsoft.hdinsight/clusters/providers/microsoft.insights/metricdefinitions  
- microsoft.hdinsight/clusters/restarthosts  
- microsoft.hdinsight/clusters/roles/autoscale  
- microsoft.hdinsight/clusters/upgrades  
- microsoft.hdinsight/locations/availableclusterpoolversions  
- microsoft.hdinsight/locations/availableclusterversions  
- microsoft.hdinsight/locations/azureasyncoperations  
- microsoft.hdinsight/locations/billingspecs  
- microsoft.hdinsight/locations/operationresults  
- microsoft.hdinsight/locations/operationstatuses  
- microsoft.hdinsight/locations/usages  
- microsoft.hdinsight/locations/validatecreaterequest  
- microsoft.hdinsight/operations  
- microsoft.hdinsight/resourcetypes  

### Key Vault
- microsoft.keyvault/hsmpools  
- microsoft.keyvault/hsmpools/joinvault  

### Logic Apps*
- microsoft.integrationspaces/locations/operationstatuses  
- microsoft.integrationspaces/operations  
- microsoft.integrationspaces/register  
- microsoft.integrationspaces/registeredsubscriptions  
- microsoft.integrationspaces/spaces  
- microsoft.integrationspaces/spaces/applications  
- microsoft.integrationspaces/spaces/applications/businessprocesses  
- microsoft.integrationspaces/spaces/applications/businessprocesses/versions  
- microsoft.integrationspaces/spaces/applications/deletebusinessprocessdevelopmentartifact  
- microsoft.integrationspaces/spaces/applications/getbusinessprocessdevelopmentartifact  
- microsoft.integrationspaces/spaces/applications/listbusinessprocessdevelopmentartifacts  
- microsoft.integrationspaces/spaces/applications/resources  
- microsoft.integrationspaces/spaces/applications/savebusinessprocessdevelopmentartifact  
- microsoft.integrationspaces/spaces/applications/validatebusinessprocessdevelopmentartifact  
- microsoft.integrationspaces/spaces/infrastructureresources  
- microsoft.integrationspaces/unregister  

### Microsoft Defender*
- microsoft.easm/operations  
- microsoft.easm/register  
- microsoft.easm/unregister  
- microsoft.easm/workspaces  
- microsoft.easm/workspaces/assets  
- microsoft.easm/workspaces/assets/export  
- microsoft.easm/workspaces/assets/links  
- microsoft.easm/workspaces/dataconnections  
- microsoft.easm/workspaces/dataconnections/validate  
- microsoft.easm/workspaces/discogroups  
- microsoft.easm/workspaces/discogroups/run  
- microsoft.easm/workspaces/discogroups/runs  
- microsoft.easm/workspaces/discogroups/validate  
- microsoft.easm/workspaces/discotemplates  
- microsoft.easm/workspaces/labels  
- microsoft.easm/workspaces/reports/assets/snapshot  
- microsoft.easm/workspaces/reports/assets/summarize  
- microsoft.easm/workspaces/savedfilters  
- microsoft.easm/workspaces/tasks  
- microsoft.easm/workspaces/tasks/cancel  
- microsoft.easm/workspaces/tasks/download

### Microsoft Entra ID
- microsoft.aadiam/privatelinkforazuread/privateendpointconnectionsapproval

### Microsoft Fabric*
- microsoft.fabric/capacities  
- microsoft.fabric/capacities/resume  
- microsoft.fabric/capacities/skus  
- microsoft.fabric/capacities/suspend  
- microsoft.fabric/locations/checknameavailability  
- microsoft.fabric/locations/operationresults  
- microsoft.fabric/locations/operationstatuses  
- microsoft.fabric/operations  
- microsoft.fabric/register  
- microsoft.fabric/skus  

### Power BI*
- microsoft.powerbi/privatelinkservicesforpowerbi  
- microsoft.powerbi/privatelinkservicesforpowerbi/azureresourcename  
- microsoft.powerbi/privatelinkservicesforpowerbi/azureresourcename/privatelinkresources  
- microsoft.powerbi/privatelinkservicesforpowerbi/operationresults  
- microsoft.powerbi/privatelinkservicesforpowerbi/operationresults/operationid  
- microsoft.powerbi/privatelinkservicesforpowerbi/privateendpointconnectionproxies  
- microsoft.powerbi/privatelinkservicesforpowerbi/privateendpointconnectionproxies/validate  
- microsoft.powerbi/privatelinkservicesforpowerbi/privateendpointconnections  
- microsoft.powerbi/tenants  
- microsoft.powerbi/tenants/providers/microsoft.insights/diagnosticsettings  
- microsoft.powerbi/tenants/providers/microsoft.insights/logdefinitions  
- microsoft.powerbi/tenants/workspaces  
- microsoft.powerbi/tenants/workspaces/providers/microsoft.insights/diagnosticsettings  
- microsoft.powerbi/tenants/workspaces/providers/microsoft.insights/logdefinitions  

### Storage*
- microsoft.elasticsan/elasticsans  
- microsoft.elasticsan/elasticsans/privateendpointconnectionproxies  
- microsoft.elasticsan/elasticsans/privateendpointconnectionproxies/validate  
- microsoft.elasticsan/elasticsans/privateendpointconnections  
- microsoft.elasticsan/elasticsans/privateendpointconnectionsapproval  
- microsoft.elasticsan/elasticsans/privateendpoints/move  
- microsoft.elasticsan/elasticsans/privatelinkresources  
- microsoft.elasticsan/elasticsans/volumegroups  
- microsoft.elasticsan/elasticsans/volumegroups/snapshots  
- microsoft.elasticsan/elasticsans/volumegroups/snapshots/begingetaccess  
- microsoft.elasticsan/elasticsans/volumegroups/volumes  
- microsoft.elasticsan/locations/asyncoperations  
- microsoft.elasticsan/operations  
- microsoft.elasticsan/register  
- microsoft.elasticsan/skus  
- microsoft.storageactions/locations/operationstatuses  
- microsoft.storageactions/locations/previewactions  
- microsoft.storageactions/operations  
- microsoft.storageactions/register  
- microsoft.storageactions/storagetasks  
- microsoft.storageactions/storagetasks/reports  
- microsoft.storageactions/storagetasks/storagetaskassignments

### VPN Gateway*
- microsoft.networkfunction/azuretrafficcollectors  
- microsoft.networkfunction/azuretrafficcollectors/collectorpolicies  
- microsoft.networkfunction/register  
- microsoft.networkfunction/unregister
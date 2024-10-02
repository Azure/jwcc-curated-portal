## Implementing Curated Portal policy on a new tenant (via Script) 

This folder contains following files.

|  Name                                           |  Notes                                                                                  |
|:------------------------------------------------|:----------------------------------------------------------------------------------------|
| `Curated_Portal_PolicyDefinition.json`          | Contains **Azure Policy Definition** to be used for Curated Portal Policy               |
| `JWCC_Gov_Final_<Month>_<Year>_<Version>.json`  | Contains **latest JWCC Catalog** to be used as parameter value for Policy Assignment    |
| `Parameters.json`                               | Contains **Azure Policy Parameters** to be used for Curated Portal Policy               |
| `curatedcatalog.ps1`                            | PowerShell Script to create Curated Portal Policy Definion/Assignment                   |

**Note** - Name of the file `JWCC_Gov_Final_<Month>_<Year>_<Version>.json` will change as JWCC Catalog gets updated over time.

**Example file name** - `JWCC_Gov_Final_June_2024_4.0.json`

|  Descriptor |  Notes                         |
|:------------|:-------------------------------|
| `<Month>`   | Indicates Month (e.g. `June`)  |
| `<Year>`    | Indicates Year (e.g. `2024`)   |
| `<Version>` | Indicates Version (e.g. `4.0`) |


## How to run script to create curated portal policy

1. Log in to **Azure Portal** using **Global Administrator** user account.

2. Make this account is also been granted with **Owner** role assignment at **Tenant Root Group** scope.

3. Launch **Azure Cloud Shell** in **PowerShell** mode.

4. Download following files from [GitHub Repo's Script folder](https://github.com/Azure/jwcc-curated-portal/tree/main/Azure%20Government/AzurePolicyFiles-CuratedPortal/Script) and store locally on your machine.

    - `Curated_Portal_PolicyDefinition.json`
    - `JWCC_Gov_Final_<Month>_<Year>_<Version>.json`
    - `Parameters.json`
    - `curatedcatalog.ps1`

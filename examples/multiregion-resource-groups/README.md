Refer the example source code in GitHub. This example creates 4 resource groups in the canadacentral and canadaeast Azure regions. 

### terraform.plan
```
Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # module.multiregion-resource-groups.azurerm_resource_group.rg["cg-rg-msad-cc"] will be created
  + resource "azurerm_resource_group" "rg" {
      + id       = (known after apply)
      + location = "canadacentral"
      + name     = "cg-rg-msad-cc"
      + tags     = {
          + "CostCenter"  = "CC5678"
          + "Department"  = "System Admins"
          + "Description" = "Microsoft Active Directory Domain Services"
          + "Owner"       = "cg@cloud.com"
          + "Support"     = "systemadmins@cloud.com"
        }
    }

  # module.multiregion-resource-groups.azurerm_resource_group.rg["cg-rg-msad-ce"] will be created
  + resource "azurerm_resource_group" "rg" {
      + id       = (known after apply)
      + location = "canadaeast"
      + name     = "cg-rg-msad-ce"
      + tags     = {
          + "CostCenter"  = "CC5678"
          + "Department"  = "System Admins"
          + "Description" = "Microsoft Active Directory Domain Services"
          + "Owner"       = "cg@cloud.com"
          + "Support"     = "systemadmins@cloud.com"
        }
    }

  # module.multiregion-resource-groups.azurerm_resource_group.rg["cg-rg-network-cc"] will be created
  + resource "azurerm_resource_group" "rg" {
      + id       = (known after apply)
      + location = "canadacentral"
      + name     = "cg-rg-network-cc"
      + tags     = {
          + "CostCenter" = "CC1234"
          + "Department" = "Network Services"
          + "Owner"      = "cg@cloud.com"
          + "Support"    = "networkadmins@cloud.com"
        }
    }

  # module.multiregion-resource-groups.azurerm_resource_group.rg["cg-rg-network-ce"] will be created
  + resource "azurerm_resource_group" "rg" {
      + id       = (known after apply)
      + location = "canadaeast"
      + name     = "cg-rg-network-ce"
      + tags     = {
          + "CostCenter" = "CC1234"
          + "Department" = "Network Services"
          + "Owner"      = "cg@cloud.com"
          + "Support"    = "networkadmins@cloud.com"
        }
    }

Plan: 4 to add, 0 to change, 0 to destroy.
```

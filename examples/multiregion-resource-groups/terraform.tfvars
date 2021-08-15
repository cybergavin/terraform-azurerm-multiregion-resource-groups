# Global tags
global-tags = {
  "ManagedBy" = "Terraform"
}
# Map of regions for deployment of resource groups
regions     = {
  region1   = {
    name    = "canadacentral",
    code    = "cc" },
  region2   = {
    name    = "canadaeast",
    code    = "ce" }
}
# Tenant
tenant = "cg"
#
# Map of resource groups
# NOTE: Use short names or aliases for resource groups as the code will generate the resource group name as per the following format:
#       <tenant>-rg-<resource_group_alias>-<environment>-<region_code>
#
resource-groups   = {
  #########################################################################
  network         = {
    tags          = {
      Owner       = "cg@cloud.com",
      Support     = "networkadmins@cloud.com",
      CostCenter  = "CC1234",
    Department    = "Network Services" }
  }
  #########################################################################
  msad            = {
    tags          = {
      Owner       = "cg@cloud.com",
      Support     = "systemadmins@cloud.com",
      CostCenter  = "CC5678",
      Department  = "System Admins",
    Description   = "Microsoft Active Directory Domain Services" }
  }
  #########################################################################
}
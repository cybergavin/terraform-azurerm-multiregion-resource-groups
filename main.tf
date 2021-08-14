#
# Local Variables
#
locals {
  # Create a flattened list for resource groups in multiple regions
  multi-region-rg = flatten([
    for rg-key, rg in var.resource-groups : [
      for region-key, region in var.regions : {
        rg-name     = var.environment != "" ? format("%s-rg-%s-%s-%s", var.tenant, rg-key, var.environment, region.code) : format("%s-rg-%s-%s", var.tenant, rg-key, region.code)
        rg-tags     = rg.tags
        region-name = region.name
        region-code = region.code
      }
    ]
  ])
}
#
# Create resource groups
#
resource "azurerm_resource_group" "rg" {
  for_each = {
    for k, v in local.multi-region-rg : v.rg-name => v
  }

    name     = each.key
    location = each.value.region-name
    tags     = lookup(each.value, "rg-tags", null) == null ? var.global-tags : merge(var.global-tags, each.value.rg-tags)
}

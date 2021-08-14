### terraform-azurerm-multiregion-resource-groups
Create one or more Azure resource groups in one or more Azure regions

- Allows the creation of one or more Azure resource groups in one or more Azure regions
- Provisions resource groups with a standard nomenclature (aligned with Microsoft CAF) as shown below: 
```
  <tenant>-rg-<resource_group_alias>[-environment]-<region_code>
```
- Each resource group is represented by a map.
- Within each resource group map, a tag is represented as another map, wherein you may add/modify/delete any number of tags.
- In order to apply the same tags across multiple resource groups, use the `global_tags` variable to store such common tags in a map.

### Example:

Refer examples folder

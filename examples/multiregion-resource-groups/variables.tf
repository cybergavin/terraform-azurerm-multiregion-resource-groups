variable "tenant" {
  type        = string
  description = "(Required) Name of Azure Tenant (used as a prefix when naming Azure resource groups)"
}
variable "global-tags" {
  type        = map(any)
  description = "(Optional) Map of tags to be applied globally on all resource groups"
  default     = {}
}
variable "regions" {
  type        = map(any)
  description = "(Required) Map of Azure regions"
}
variable "resource-groups" {
  type        = map(any)
  description = "(required) Map of Azure Resource Groups"
}
variable "environment" {
  type        = string
  description = "(Optional) Environment code (Examples: pr=> production, qa => quality assurance, dv => development) to be used in the name of resource groups"
  default     = ""
}

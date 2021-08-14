terraform {
  required_version = ">= 0.15"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=2.58.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "multiregion-resource-groups" {
  source          = "cybergavin/multiregion-resource-groups/azurerm"
  version         = "1.2.0"
  tenant          = var.tenant
  regions         = var.regions
  resource-groups = var.resource-groups
}

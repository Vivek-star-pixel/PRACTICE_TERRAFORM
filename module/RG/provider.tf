terraform {
  required_version = ">= 1.3.0"
  backend "azurerm" {
    resource_group_name  = "container_rg"
    storage_account_name = "statefilestg"
    container_name       = "statecontainer"
    key                  = "statevky.tfstate"
    subscription_id      = "cfc0d37c-0341-4d06-bcf3-35b93770a2ee"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.68.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "cfc0d37c-0341-4d06-bcf3-35b93770a2ee"
}



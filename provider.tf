terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.31.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "durgesh1"
    storage_account_name = "durgeshkitijori1"
    container_name       = "scdurgesh1"
    subscription_id      = "661ea49e-05d4-429e-8204-de0d46c539b5"
    key                  = "aman.tfstate"
  }
}
provider "azurerm" {
  features {}
  subscription_id = "661ea49e-05d4-429e-8204-de0d46c539b5"
}

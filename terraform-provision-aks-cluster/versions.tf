terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.66.0"
    }
  }

  required_version = ">= 0.14"

  #configuring terraform remote backend
  backend "azurerm" {
    resource_group_name  = "tfstate"
    storage_account_name = "tfstate7397"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}


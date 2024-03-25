terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.92.0"
    }
  }
  backend "azurerm" {
    resource_group_name   = "rjn"
    storage_account_name  = "tfstatestorage09"
    container_name        = "tfstate"
    key                   = "terraform.tfstate"
  }
}


resource "azurerm_resource_group" "rjn" {
  name= "rjn"
  location= "Central India"
}
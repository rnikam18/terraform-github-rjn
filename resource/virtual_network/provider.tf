terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.92.0"
    }
  }
   backend "azurerm" {
    resource_group_name   = "rjn"
    storage_account_name  = "tfstatestorage09e"
    container_name        = "tfstate"
    key                   = "terraform.tfstate"
  }
}


resource "azurerm_resource_group" "rjn" {
  name= "rjn-rg"
  location= "Central India"
}
provider "azurerm" {
  subscription_id = "d9f3caad-04a6-4196-9cc3-df80deac1625"
  tenant_id       = "f166b17c-0e5b-401f-9ac1-bf6af2fa78e9"
  features {}
}
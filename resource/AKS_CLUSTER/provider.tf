terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.92.0"
    }
  }
}

resource "azurerm_resource_group" "rjn" {
  name= "rjn-rg"
  location= "Central India"
}

resource "azurerm_storage_account" "rjnstorage" {
  name                     = "rjnstorage"
  resource_group_name      = azurerm_resource_group.rjn.name
  location                 = azurerm_resource_group.rjn.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  depends_on = [ azurerm_resource_group.rjn ]
}

terraform {
  backend "azurerm" {
    resource_group_name   = "rjn-rg"
    storage_account_name  = "rjnstorage"
    container_name        = "tfstate"
    key                   = "terraform.tfstate" 
  }
}
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.92.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "f89c9fbd-eb95-45b1-b08a-ac68effe3c93"
  tenant_id = "3385756d-d0cd-480a-b29b-dd3a76f458db"
  client_id = "dfa1a378-1edc-4e71-b9be-4949c4a0dd28"
  client_secret = "236f778f-bddd-45dc-b7fc-7e8abc22d3f1"
  features {}  
}
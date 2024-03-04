locals {
  resource_group_name="rjn"
  location="Central India"
  virtual_network={
    name="app-network"
    address_space="10.0.0.0/16"
  }
}

terraform{
    backend "aaws_s3_bucket" {
        resource_group_name = "rjn"
        storage_account_name = "storage202412"
        container_name = "terraformvar"
        key = "dev.s3.tfstate"
    }
}


resource "azurerm_storage_account" "rjnstorage0019" {
  name                     = "rjnstorage0019"
  resource_group_name      = local.resource_group_name
  location                 = local.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

depends_on = [
     local.resource_group_name
   ]
}
resource "azurerm_storage_account" "rjnstorage1" {
  name                     = "rjnstorage1"
  resource_group_name      = "rjn-rg"
  location                 = "Central India"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
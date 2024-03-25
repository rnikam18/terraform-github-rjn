resource "azurerm_virtual_network" "rjn-nw" {
  name                = "rjn-nw"
  resource_group_name = azurerm_resource_group.rjn.name
  location            = azurerm_resource_group.rjn.location
  address_space       = ["10.0.0.0/16"]
}

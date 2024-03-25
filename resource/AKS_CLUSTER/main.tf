resource "azurerm_kubernetes_cluster" "rjn-aks1" {
  name                = "rjn-aks1"
  location            = "Central India"
  resource_group_name = "rjn-rg"
  dns_prefix          = "rjnaks1"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }
  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Dev"
  }
}
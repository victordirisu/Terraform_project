provider "azurerm" {
  features = {}
}

resource "azurerm_resource_group" "aks_rg" {
  name     = "AKS-RG"
  location = "East US"  
}
# configuring the main.tf script to define AKS cluster

resource "azurerm_kubernetes_cluster" "aks_cluster" {
  name                = "myAKSCluster"
  location            = azurerm_resource_group.aks_rg.location
  resource_group_name = azurerm_resource_group.aks_rg.name

  dns_prefix = "myakscluster"

  default_node_pool {
    name       = "default"
    node_count = 2  
    vm_size    = "Standard_DS2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin = "azure"
  }

  enable_rbac = true

}

# define the virtual network and subnet for the AKS cluster

resource "azurerm_virtual_network" "aks_vnet" {
  name                = "aksVnet"
  address_space       = ["10.0.0.0/8"]
  location            = azurerm_resource_group.aks_rg.location
  resource_group_name = azurerm_resource_group.aks_rg.name
}

resource "azurerm_subnet" "aks_subnet" {
  name                 = "aksSubnet"
  resource_group_name  = azurerm_resource_group.aks_rg.name
  virtual_network_name = azurerm_virtual_network.aks_vnet.name
  address_prefixes     = ["10.0.1.0/18"]
}
# incorporating variables for better parametrization

variable "resource_group_name" {
  type = string
  default = "AKS-RG"
}

output "aks_cluster_id" {
  value = azurerm_kubernetes_cluster.aks_cluster.id
}



provider "azurerm" {
  features {}

  # Use subscription_id field to configure terraform to use specific subscription
  #  subscription_id = "00000000-0000-0000-0000-000000000000"
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.resource_group_location

  tags = {
    environment = var.resource_group_tag
  }
}

resource "azurerm_kubernetes_cluster" "aks-cluster" {
  name                = var.cluster_name
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = var.dns_prefix


  default_node_pool {
    name                = var.node_pool_name
    vm_size             = var.vm_size
    node_count          = var.node_count
    availability_zones  = var.availability_zones
    enable_auto_scaling = var.autoscaling_enabled
    min_count           = var.min_nodes
    max_count           = var.max_nodes
    os_disk_size_gb     = var.os_disk_size_gb
    os_disk_type        = var.os_disk_type
    enable_node_public_ip = var.enable_node_public_ip
    max_pods              = var.max_pods
    kubelet_config {
      cpu_manager_policy = var.cpu_manager_policy
    }
  }

  tags = {
    environment = var.cluster_tag
  }

  identity {
    type = "SystemAssigned"
  }
}

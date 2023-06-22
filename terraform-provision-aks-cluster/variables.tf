
variable "resource_group_location" {
  type        = string
  description = "Location of the resource group."
}

variable "location" {
  description = "The Azure region where the AKS cluster will be deployed"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group where the AKS cluster will be created"
  type        = string
}

variable "resource_group_tag" {
  type        = string
  description = "Tag for the resource group"
}

variable "cluster_tag" {
  type        = string
  description = "Tag for the aks cluster"
}

variable "cluster_name" {
  description = "The name of the AKS cluster"
  type        = string
}

variable "dns_prefix" {
  description = "The DNS prefix for the AKS cluster"
  type        = string
}

variable "node_pool_name" {
  description = "The name of the node pool"
  type        = string
}

variable "vm_size" {
  description = "The VM size for the node pool"
  type        = string
}

variable "node_count" {
  description = "The number of nodes in the node pool"
  type        = number
}

variable "availability_zones" {
  description = "The availability zones for the node pool"
  type        = list(string)
}

variable "autoscaling_enabled" {
  description = "Enable autoscaling for the node pool"
  type        = bool
}

variable "min_nodes" {
  description = "The minimum number of nodes in the node pool"
  type        = number
}

variable "max_nodes" {
  description = "The maximum number of nodes in the node pool"
  type        = number
}

variable "os_disk_size_gb" {
  description = "The size of the OS disk in GB"
  type        = number
}

variable "os_disk_type" {
  description = "The type of the OS disk"
  type        = string
}

#variable "vnet_subnet_id" {
#  description = "The ID of the subnet where the node pool will be deployed"
#  type        = string
#}

variable "enable_node_public_ip" {
  description = "Enable public IP for the nodes in the node pool"
  type        = bool
}

variable "enable_ultra_ssd" {
  description = "Enable Ultra SSD for the nodes in the node pool"
  type        = bool
}

variable "max_pods" {
  description = "The maximum number of pods per node"
  type        = number
}

variable "cpu_manager_policy" {
  description = "The CPU manager policy for the kubelet"
  type        = string
}
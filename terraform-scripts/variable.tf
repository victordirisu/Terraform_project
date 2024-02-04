variable "azure_resource_group" {
  description = "Name for the azure resource group for project"
}

variable "azure_cluster" {
  description = "Name of the AKS cluster for project"
}

variable "rbac_role" {
  description = "Name of the custom RBAC role definition"
}

variable "user_principal_id" {
  description = "Principal ID of the user or service principal to assign the role"
}

variable "resource_group_name" {
  type = string
  default = "AKS-RG"
}

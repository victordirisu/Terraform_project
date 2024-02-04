variable "azure_resource_group" {
  description = "Name for the azure resource group for project"
}

variable "azure_cluster" {
  description = "Name of the AKS cluster for project"
}

# define variables related to Role-Based Access Control(RBAC)

variable "rbac_role" {
  description = "Name of the custom RBAC role definition"
}

variable "user_principal_id" {
  description = "Principal ID of the user or service principal to assign the role"
}

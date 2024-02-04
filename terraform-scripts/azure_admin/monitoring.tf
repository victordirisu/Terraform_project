provider "azurerm" {
  features = {}
}

resource "azurerm_monitor_diagnostic_setting" "aks_diagnostic" {
  name               = "aksdiagnostic"
  target_resource_id = azurerm_kubernetes_cluster.aks.id

  log {
    category = "kube-apiserver"
    enabled  = true
    retention_policy {
      enabled = false
    }
  }
}

resource "azurerm_log_analytics_workspace" "aks_logs" {
  name                = "akslogs"
  location            = azurerm_kubernetes_cluster.aks.location
  resource_group_name = azurerm_kubernetes_cluster.aks.azure_resource_group
}

resource "azurerm_monitor_log_profile" "aks_log_profile" {
  name                = "akslogprofile"
  storage_account_ids = []
  workspace_id       = azurerm_log_analytics_workspace.aks_logs.id
}

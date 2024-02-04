resource "azurerm_monitor_metric_alert" "high_cpu_alert" {
  name                = "HighCPUAlert"
  resource_group_name = var.azure_resource_group
  scopes              = [azurerm_kubernetes_cluster.aks.id]

  criteria {
    metric_namespace = "Microsoft.ContainerService"
    metric_name      = "cpuUsage"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = 90
  }

  actions {
    action_group_id = "action-group-id" 
  }
}

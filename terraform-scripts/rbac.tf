resource "azurerm_role_definition" "custom_role" {
  name        = var.rbacrole
  description = "Custom RBAC role for managing resources"
  permissions = [
    {
      actions     = ["*"]
      not_actions = []
      data_actions = ["Microsoft.Resources/subscriptions/resourceGroups/*"]
    }
  ]
}

resource "azurerm_role_assignment" "custom_role_assignment" {
  principal_id           = var.user_principal_id
  role_definition_name   = azurerm_role_definition.custom_role.name
  scope                  = "/subscriptions/<subscription_id>"  # Replace with your subscription ID
}

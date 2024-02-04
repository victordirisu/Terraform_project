- First, create a "variable.tf" file to store the variables

- Define variables to make the terraform configuration more flexible and reusable (By parameterizing key values, such as resource group names, AKS cluster names, or alert thresholds, the Terraform scripts become adaptable to different environments or scenarios).
<img width="621" alt="Screenshot 2024-02-04 at 09 49 03" src="https://github.com/victordirisu/Terraform_project/assets/147115134/bb6b66f0-ef3c-4fa8-9ae6-69e17d4eba99">

- Create a "monitoring.tf" file to automate the configuration of monitoring settings for the AKS cluster and establish a Log Analytics workspace for centralized log collection. This ensures that the infrastructure's health and performance metrics are monitored, and logs are efficiently stored for analysis.
<img width="805" alt="Screenshot 2024-02-04 at 09 55 59" src="https://github.com/victordirisu/Terraform_project/assets/147115134/6f619efd-58af-4837-98aa-579a34746255">

- Create an "alert.tf" file to define and automate the configuration of alerts to notify administrators or automated systems when specific metrics or conditions in the AKS cluster meet predefined thresholds.
<img width="759" alt="Screenshot 2024-02-04 at 10 03 40" src="https://github.com/victordirisu/Terraform_project/assets/147115134/3bf96497-ac71-424b-8048-a3b90569bee3">

- Extend the "variables.tf" file to define variables related to Role-Based Access Control (RBAC) for Azure resources. RBAC variables will include information such as the custom role definition name and the principal ID of the user or service principal to assign the role.
<img width="670" alt="Screenshot 2024-02-04 at 10 10 45" src="https://github.com/victordirisu/Terraform_project/assets/147115134/eea0efa7-1ea4-49ed-b360-482579d15dd9">

- Create an "rbac.tf" file to define and assign a custom Role-Based Access Control (RBAC) role using Terraform which eanbles fine-grained access control to Azure resources. <img width="738" alt="Screenshot 2024-02-04 at 10 16 20" src="https://github.com/victordirisu/Terraform_project/assets/147115134/2d2456a7-af0a-4ae5-a25b-01aa7d227555">




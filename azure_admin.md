# Overview
This project leverages Terraform to automate the setup of monitoring, logging, and alerts for Kubernetes services on Azure using Azure Monitor and Log Analytics. Additionally, it implements Role-Based Access Control (RBAC) for Azure resources, ensuring secure access management.
## Azure Administration with Terraform:
### Objectives
- Use Terraform to set up monitoring, logging, and alerts for the Kubernetes services using
Azure Monitor and Log Analytics.
- Implement role-based access control (RBAC) for Azure resources through Terraform configurations.

### Solutions
- First, create a "variable.tf" file to store the variables

- Define variables to make the terraform configuration more flexible and reusable (By parameterizing key values, such as resource group names, AKS cluster names, or alert thresholds, the Terraform scripts become adaptable to different environments or scenarios).
<img width="621" alt="Screenshot 2024-02-04 at 09 49 03" src="https://github.com/victordirisu/Terraform_project/assets/147115134/bb6b66f0-ef3c-4fa8-9ae6-69e17d4eba99">

- Create a "monitoring.tf" file to automate the configuration of monitoring settings for the AKS cluster and establish a Log Analytics workspace for centralized log collection. This ensures that the infrastructure's health and performance metrics are monitored, and logs are efficiently stored for analysis.
<img width="805" alt="Screenshot 2024-02-04 at 09 55 59" src="https://github.com/victordirisu/Terraform_project/assets/147115134/6f619efd-58af-4837-98aa-579a34746255">

- Create an "alert.tf" file to define and automate the configuration of alerts to notify administrators or automated systems when specific metrics or conditions in the AKS cluster meet predefined thresholds.
<img width="759" alt="Screenshot 2024-02-04 at 10 03 40" src="https://github.com/victordirisu/Terraform_project/assets/147115134/3bf96497-ac71-424b-8048-a3b90569bee3">

- Extend the "variables.tf" file to define variables related to Role-Based Access Control (RBAC) for Azure resources. RBAC variables will include information such as the custom role definition name and the principal ID of the user or service principal to assign the role.
<img width="670" alt="Screenshot 2024-02-04 at 10 10 45" src="https://github.com/victordirisu/Terraform_project/assets/147115134/eea0efa7-1ea4-49ed-b360-482579d15dd9">

- Create an "rbac.tf" file to define and assign a custom Role-Based Access Control (RBAC) role using Terraform which enables fine-grained access control to Azure resources. <img width="738" alt="Screenshot 2024-02-04 at 10 16 20" src="https://github.com/victordirisu/Terraform_project/assets/147115134/2d2456a7-af0a-4ae5-a25b-01aa7d227555">

- Run the "terraform init" command to initialize a terraform working directory.
<img width="253" alt="Screenshot 2024-02-04 at 10 26 46" src="https://github.com/victordirisu/Terraform_project/assets/147115134/b377a105-34c7-429b-ab2c-ff683f01d92c">

-  Use the "terraform validate" command to check the syntax and validity of Terraform configuration files.
<img width="254" alt="Screenshot 2024-02-04 at 10 27 39" src="https://github.com/victordirisu/Terraform_project/assets/147115134/24f01d01-5799-4b15-b648-7fa080af0509">

- Use the "terraform fmt" command to automatically format Terraform configuration files according to a standard style.
<img width="221" alt="Screenshot 2024-02-04 at 10 29 11" src="https://github.com/victordirisu/Terraform_project/assets/147115134/7e3bd936-48aa-4fc3-9ecb-31dc6c3ce4f1">

- Use the "terraform plan" command to preview the changes that Terraform will make to the infrastructure based on the defined configuration.
<img width="233" alt="Screenshot 2024-02-04 at 10 29 53" src="https://github.com/victordirisu/Terraform_project/assets/147115134/64c29ea7-ab2c-4dfd-bb84-9d176b2d3d48">

- Use the "terraform apply" to apply the changes defined in the Terraform configuration to the actual infrastructure.
<img width="219" alt="Screenshot 2024-02-04 at 10 30 53" src="https://github.com/victordirisu/Terraform_project/assets/147115134/42bd1e2d-5eb7-4dea-8e4a-14f8b66ad0c5">

- Review changes and confirm execution to ensure that the planned changes align with expectations and won't have unintended consequences on infrastructure.

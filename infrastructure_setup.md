# Overview
This project aims to deploy and manage a microservices-based web application infrastructure using Terraform and Azure Kubernetes Service (AKS). The focus is on achieving a scalable, secure, and automated environment following best practices in cloud infrastructure management.
## Infrastructure Setup Using Terraform and Azure Kubernetes Services (AKS)
### Objectives
- Use Terraform to define the infrastructure for a Kubernetes cluster in AKS.
- Ensure the Terraform scripts include configurations for high availability, scalability, and
security.
- Implement network configurations, storage classes, and any other necessary Azure resources using Terraform.

### Solutions
- Firstly, ensure azure authentication by using the "az login" on microsoft powershell, this directs you to the microsoft webpage to authenticate your credentials. See screenshot below.

<img width="179" alt="Screenshot 2024-02-04 at 08 34 57" src="https://github.com/victordirisu/Terraform_project/assets/147115134/37f768e2-6e40-446d-b9b0-e1ee97a712f4">

- Use the "mkdir" command to create a new folder for your terraform configuration and move into the folder with the "cd" command, as seen in the screenshot below.

<img width="377" alt="Screenshot 2024-02-04 at 08 36 34" src="https://github.com/victordirisu/Terraform_project/assets/147115134/f6cb0713-aa03-4446-9ef5-ba01237dfd77">

- On your IDE( e.g VSCode), create a new terraform file ("main.tf") to interact with Microsoft Azure by defining the Azure provider and a resource group. The Azure provider is a plugin that allows Terraform to manage resources in Azure, and a resource group is a logical container for resources deployed in Azure.
<img width="465" alt="Screenshot 2024-02-04 at 08 40 11" src="https://github.com/victordirisu/Terraform_project/assets/147115134/44094c15-478e-413a-8936-7bc17957bec4">

- Configure the Terraform script (main.tf) to define the Azure Kubernetes Service (AKS) cluster. The AKS cluster is where your microservices will be deployed, and this configuration ensures that the cluster is created with specific settings such as the number of nodes, virtual machine size, and network configurations.
<img width="640" alt="Screenshot 2024-02-04 at 08 41 41" src="https://github.com/victordirisu/Terraform_project/assets/147115134/cb899b57-8001-4b31-96cb-6ec9c690fb7f">

- Extend the Terraform script (main.tf) to define the virtual network and subnet for your Azure Kubernetes Service (AKS) cluster. The virtual network provides the networking foundation for the AKS cluster, and the subnet is a subset of the virtual network where the AKS nodes are deployed.
<img width="740" alt="Screenshot 2024-02-04 at 08 42 49" src="https://github.com/victordirisu/Terraform_project/assets/147115134/cc91f39f-9d90-40fb-90d2-3b5e3511c035">

- Enhance the Terraform script (main.tf) by incorporating variables for better parametrization and outputs for capturing essential information that might be useful for other parts of your infrastructure or external systems.
<img width="484" alt="Screenshot 2024-02-04 at 08 44 21" src="https://github.com/victordirisu/Terraform_project/assets/147115134/e01a0c8f-8721-4b0a-84a9-488330e5b0b9">

- Initialize the Terraform project, by downloading any necessary plugins and setting up the working directory using the "terraform init" command.
<img width="253" alt="Screenshot 2024-02-04 at 10 26 46" src="https://github.com/victordirisu/Terraform_project/assets/147115134/b377a105-34c7-429b-ab2c-ff683f01d92c">

-  Use the "terraform validate" command to check the syntax and validity of Terraform configuration files.
<img width="254" alt="Screenshot 2024-02-04 at 10 27 39" src="https://github.com/victordirisu/Terraform_project/assets/147115134/24f01d01-5799-4b15-b648-7fa080af0509">

- Use the "terraform fmt" command to automatically format Terraform configuration files according to a standard style.
<img width="221" alt="Screenshot 2024-02-04 at 10 29 11" src="https://github.com/victordirisu/Terraform_project/assets/147115134/7e3bd936-48aa-4fc3-9ecb-31dc6c3ce4f1">

- Use the "terraform plan" command to preview the changes that Terraform will make to the infrastructure based on the defined configuration.
<img width="233" alt="Screenshot 2024-02-04 at 10 29 53" src="https://github.com/victordirisu/Terraform_project/assets/147115134/64c29ea7-ab2c-4dfd-bb84-9d176b2d3d48">

- Apply the configurations using the "terraform apply" command and also respond "Yes" to confirm the changes.
<img width="255" alt="Screenshot 2024-02-04 at 10 35 32" src="https://github.com/victordirisu/Terraform_project/assets/147115134/8ddc7619-7681-4a5c-9d90-81ebc0d908a9">


- After testing, clean up resources to avoid unnecessary costs using "terraform destroy" command.
<img width="272" alt="Screenshot 2024-02-04 at 08 45 54" src="https://github.com/victordirisu/Terraform_project/assets/147115134/7e15c5cd-da73-4398-9f88-45f0307db7a9">


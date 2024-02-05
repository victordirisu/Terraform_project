# Overview
The project is focused on implementing CI/CD pipelines using GitHub Actions for a microservices architecture deployed on an Azure Kubernetes Service (AKS) cluster.

## Set up GitHub repositories for each microservice with appropriate branching strategies
### Objectives
-  Develop GitHub Actions workflows for:
- Running Terraform scripts to provision and update the infrastructure as needed.
- Continuous integration and deployment of each service to the AKS cluster.
- Include steps for code linting, unit testing, building Docker images, and deploying them to AKS.
### Solutions
- Create a separate GitHub repository for each microservice.
- Organize the Terraform files in a dedicated folder.
- Create separate .tf files for each resource
- Create a ".github/workflows/terraform.yml" file in the infrastructure folder and use a GitHub action to run Terraform on push or pull requests.
  ![Screenshot (3)](https://github.com/victordirisu/Terraform_project/assets/147115134/050979f4-dd05-4d34-bf70-586475272998)

![Screenshot (4)](https://github.com/victordirisu/Terraform_project/assets/147115134/6b2fbd6c-861b-4f11-8587-d82d66b56c8e)

- Create a ".github/workflows/ci-cd.yml" file in each microservice repository.
- Use a GitHub Action for continuous integration and deployment.

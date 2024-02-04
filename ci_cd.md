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
<img width="478" alt="Screenshot 2024-02-04 at 12 29 00" src="https://github.com/victordirisu/Terraform_project/assets/147115134/4b5cca7b-9721-410c-8bac-e5c0748d06de">

- Create a ".github/workflows/ci-cd.yml" file in each microservice repository.
- Use a GitHub Action for continuous integration and deployment.
<img width="683" alt="Screenshot 2024-02-04 at 12 31 14" src="https://github.com/victordirisu/Terraform_project/assets/147115134/aa825904-cc55-46e1-bf67-ffa8802d5cbb">

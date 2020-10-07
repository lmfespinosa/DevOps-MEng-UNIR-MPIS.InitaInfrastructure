resource "azuredevops_variable_group" "vars" {
  project_id   = azuredevops_project.project.id
  name         = "COMMON"
  description  = "Managed by Terraform"
  allow_access = true

  variable {
    name  = "PAT_DEVOPS"
    value = var.pat_devops
  }

  variable {
    name  = "PAT_PORTAL"
    value = var.pat_portal
  }

  variable {
    name  = "AZURE_SUSCRIPTION_ID"
    value = var.azure_subscription_id
  }

  variable {
    name  = "AZURE_TENANT_ID"
    value = var.azure_tenant_id
  }

  variable {
    name  = "AZURE_CLIENT_ID"
    value = var.azure_client_id
  }

  variable {
    name  = "ORG_SERVICE_URL"
    value = var.org_service_url
  }

  variable {
    name  = "ORG_USER"
    value = var.org_user
  }

  variable {
    name  = "TERRAFORM_LOCATION"
    value = "westeurope"
  }
  
  variable {
    name  = "TERRAFORM_LOCATION"
    value = "westeurope"
  }

   variable {
    name  = "TERRAFORM_RESOURCE_GROUP"
    value = "terraform_integration_rg"
  }

 variable {
    name  = "TERRAFORM_STORAGE_ACCOUNT"
    value = "tfstatestgmpis"
  }

  variable {
    name  = "TERRAFORM_STORAGE_CONTAINER"
    value = "terraform"
  }

  variable {
    name  = "TERRAFORM_STATE_FILE"
    value = "terraform.tfstate"
  }

  variable {
    name  = "AZURE_SERVICE_CONNECTION"
    value = "Visual Studio Professional (3584afbf-1dc4-498b-b710-983d1d1673c9)"
  }

  variable {
    name  = "ENVIRONMENT"
    value = "dev"
  }

  variable {
    name  = "DEVOPS_PROJECT_NAME"
    value = var.Project-Name
  }

  variable {
    name  = "FEED"
    value = var.feed
  }

  
}
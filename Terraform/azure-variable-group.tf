resource "azuredevops_variable_group" "vars" {
  project_id   = azuredevops_project.project.id
  name         = "COMMON"
  description  = "Managed by Terraform"
  allow_access = true

  variable {
    name  = "PAT"
    value = var.pat
  }

  variable {
    name  = "AZURE_SUBSCRIPTION_ID"
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
}
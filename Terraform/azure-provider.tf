provider "azuredevops" {
  version = ">= 0.0.1"
  org_service_url = var.org-service-url
  personal_access_token = var.pat
}

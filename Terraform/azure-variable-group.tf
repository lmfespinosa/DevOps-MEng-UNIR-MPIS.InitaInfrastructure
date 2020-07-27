resource "azuredevops_variable_group" "vars" {
  project_id   = azuredevops_project.project.id
  name         = "COMMON"
  description  = "Managed by Terraform"
  allow_access = true

  variable {
    name  = "FOO"
    value = "BAR"
  }
}
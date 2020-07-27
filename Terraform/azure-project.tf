resource "azuredevops_project" "project" {
  project_name       = var.Project-Name
  description = "Sample description"
  visibility         = "private"
  version_control    = "Git"
  work_item_template = "Agile"
}
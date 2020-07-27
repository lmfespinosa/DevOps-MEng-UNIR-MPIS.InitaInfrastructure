resource "azuredevops_build_definition" "build-dev" {
  project_id = azuredevops_project.project.id
  name       = "Terraform-CI-CD-dev"
  path       = "\\Pipelines-Dev"

  ci_trigger {
    use_yaml = true
  }

  repository {
    repo_type   = "TfsGit"
    repo_id     = azuredevops_git_repository.repository.id
    branch_name = azuredevops_git_repository.repository.default_branch
    yml_path    = "terraform-pipeline.yml"
  }

  variable_groups = [
    azuredevops_variable_group.vars.id
  ]

  variable {
    name  = "PipelineVariable"
    value = "Go Microsoft!"
  }

  variable {
    name      = "PipelineSecret"
    secret_value     = "ZGV2cw"
    is_secret = true
  }
}


resource "null_resource" "execute-pipe-dev" {

    #connection {
    #    type = "ssh"
    #    user = "azureuser"
    #    password = "azureuser@2018"
    #    host = "13.92.255.50"
    #    port = 22
    #}
    #provisioner "file" {
    #    source = "script.sh"
    #    destination = "/tmp/script.sh"
    #}

    provisioner "local-exec" {
        command = "echo ${var.pat} | az devops login && az devops configure --defaults organization=${var.org_service_url} && az pipelines run --project=${azuredevops_project.project.id} --name=Terraform-CI-CD-dev --org=${var.org_service_url}/"
        
    }

    depends_on = [azuredevops_build_definition.build-dev]
}

##az extension add --name azure-devops
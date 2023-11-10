


resource "azuredevops_git_repository" "repository" {
  project_id = azuredevops_project.project.id
  name       = "MPIS.InfrastructureDevOps"

initialization {
    init_type = "Clean"

  }
 
}


resource "null_resource" "example" {

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
        #command = "git clone --mirror https://github.com/lmfespinosa/test-repo.git && cd test-repo.git && git remote add ${azuredevops_git_repository.repository.remote_url}.gt &&  git remote add origin ${azuredevops_git_repository.repository.remote_url}.git  && git push --force --set-upstream origin master ${azuredevops_git_repository.repository.remote_url}.git"
        #command = "git clone ${azuredevops_git_repository.repository.remote_url} && "
        command = "git clone https://github.com/lmfespinosa/DevOps-MEng-UNIR-MPIS.InfrastructureDevOps && cd DevOps-MEng-UNIR-MPIS.InfrastructureDevOps && git branch -a && git checkout master && git fetch --tags && git tag && git branch -a && git remote rm origin && git remote add origin ${var.org_service_url}/${var.Project-Name}/_git/MPIS.InfrastructureDevOps && git pull --allow-unrelated-histories origin master && git push --set-upstream origin master && cd .. && rmdir /s /Q DevOps-MEng-UNIR-MPIS.InfrastructureDevOps"
    }

    depends_on = [azuredevops_project.project]
}










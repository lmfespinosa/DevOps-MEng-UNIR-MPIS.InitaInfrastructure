resource "null_resource" "release-pipe-dev" {

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
        #command = "az devops configure --defaults organization=https://dev.azure.com/lmfespinosaingeniero && az pipelines release create --definition-id=1 --project=${azuredevops_project.project.id} --org=https://dev.azure.com/lmfespinosaingeniero "
        command = "echo Create Release Pipeline"
    }

    depends_on = [null_resource.execute-pipe-dev]
}




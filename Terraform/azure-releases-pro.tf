resource "null_resource" "release-pipe-pro" {

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
        #command = "echo upmnkz4whqdf2jqxdpnpfwwalhkiei3clnrcxwh4qx26h5uitbwq | az devops login && az devops configure --defaults organization=https://dev.azure.com/lmfespinosaingeniero && az pipelines release create --definition-name=pipeline-release  --project=${azuredevops_project.project.id} --org=https://dev.azure.com/lmfespinosaingeniero "
        command = "echo Create Release Pipeline"
    }

    depends_on = [azuredevops_build_definition.build-prod]
}

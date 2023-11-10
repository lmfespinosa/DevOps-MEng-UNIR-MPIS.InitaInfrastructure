variable "azure_subscription_id" {
    type            = string
    default         = "3584afbf-1dc4-498b-b710-XXXXXX"
}

# actually it is pretty easy to find if you know what to look for.
# Go to Portal.azure.com > Azure Active Directory > Properties. The directory ID it shows there is your tennant ID.
# https://portal.azure.com/#blade/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/Properties 
variable "azure_tenant_id" {
    type            = string
    default         = "d6397071-8e3e-45d2-a2d6-XXXXXXX"
}
# https://portal.azure.com/#blade/Microsoft_AAD_IAM/UserDetailsMenuBlade/Profile/userId/5c619ed2-952d-4cbc-822a-34cc7056a411/adminUnitObjectId/
variable "azure_client_id" {
    type            = string
    default         = "ef97caa6-9d7f-4cb7-aa48-XXXXXXXXX"
}

variable "org_service_url" {
    type            = string
    default         = "https://dev.azure.com/luismiguel"
}

variable "org_service_url_path" {
    type            = string
    default         = "https://dev.azure.com/luismiguel"
}

variable "pat_devops" {
    type            = string
    default         = "6mpy65coXXXXXXX"
}

variable "pat_portal" {
    type            = string
    default         = "Uy.He4W7XXXXXXXXX"
}

variable "org_user"{
    type = string
    default = "luismiguXXXXXXX"
}

variable "feed" {
    type            = string
    default         = "luismiguelferXXXXXXXX"
}

variable "Project-Name" {
    type            = string
    default         = "MPIS"
}

variable "org" {
    type            = string
    default         = "MPIS"
}

variable "azure_location" {
    type            = string
    default         = "West Europe"
}

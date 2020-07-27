variable "azure_subscription_id" {
    type            = string
    default         = "e2ea9f8d-8817-41cc-97e1-c02f76"
}

# actually it is pretty easy to find if you know what to look for.
# Go to Portal.azure.com > Azure Active Directory > Properties. The directory ID it shows there is your tennant ID.
# https://portal.azure.com/#blade/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/Properties 
variable "azure_tenant_id" {
    type            = string
    default         = "28fab7b7-ef28-40a5-b984-a331"
}
# https://portal.azure.com/#blade/Microsoft_AAD_IAM/UserDetailsMenuBlade/Profile/userId/5c619ed2-952d-4cbc-822a-34cc7056a411/adminUnitObjectId/
variable "azure_client_id" {
    type            = string
    default         = "26be248c-80aa-4711-ab99-e667"
}

variable "org-service-url" {
    type            = string
    default         = "https://espinosa.visualstudio.com/"
}

variable "pat" {
    type            = string
    default         = "upmnkz4whqdf2jqxdpnpfwwalhkiei3ch5uitbwq"
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
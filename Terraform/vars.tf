variable "azure_subscription_id" {
    type            = string
    default         = "3584afbf-1dc4-498b-b710-983d1d1673c9"
}

# actually it is pretty easy to find if you know what to look for.
# Go to Portal.azure.com > Azure Active Directory > Properties. The directory ID it shows there is your tennant ID.
# https://portal.azure.com/#blade/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/Properties 
variable "azure_tenant_id" {
    type            = string
    default         = "d6397071-8e3e-45d2-a2d6-36698acf0fea"
}
# https://portal.azure.com/#blade/Microsoft_AAD_IAM/UserDetailsMenuBlade/Profile/userId/5c619ed2-952d-4cbc-822a-34cc7056a411/adminUnitObjectId/
variable "azure_client_id" {
    type            = string
    default         = "ef97caa6-9d7f-4cb7-aa48-a9bd550140c8" #"cebedcd3-726e-4139-9d19-67feebddfed9"
}

variable "org_service_url" {
    type            = string
    default         = "https://dev.azure.com/luismiguelfernandez0391"
}

variable "org_service_url_path" {
    type            = string
    default         = "https://dev.azure.com/luismiguelfernandez0391"
}

variable "pat_devops" {
    type            = string
    default         = "6mpy65co2du7gipxlrnvlymfadplbotbtsvzpd36xpck5v3tr5uq"
}

variable "pat_portal" {
    type            = string
    default         = "Uy.He4W7zuEB5VgDKmPzIC__.-0jZP8I4T" #"Bu_U~IZnl~4Hk3J83V0qWr2lGM_coA0z.9"
}

variable "org_user"{
    type = string
    default = "luismiguelfernandez0391"
}

variable "feed" {
    type            = string
    default         = "luismiguelfernandez0391"
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

#terraform secret.
#Bu_U~IZnl~4Hk3J83V0qWr2lGM_coA0z.9
variable "hw_ak" {
    description = "Huawei Cloud Access key"
    type = string
}

variable "hw_sk" {
    description = "Huawei Cloud Secret key"
    type = string
    sensitive = true
}

variable "hw_project_id" {
    description = "ID do Projeto da Huawei Cloud"
    type = string
}

variable "hw_region" {
    description = "Região de deploy"
    type = string
    default = "la-south-2"
}

variable "bucket_name" {
    description = "Nome único para o bucket"
    type = string
    default = "meu-terraform-state-hauwei-wave"
}
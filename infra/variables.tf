variable "yc_token" {
  type        = string
  description = "OAuth-токен Yandex Cloud (из GitHub Secrets)"
  sensitive   = true
}

variable "yc_cloud_id" {
  type        = string
  description = "ID облака (из GitHub Secrets)"
  sensitive   = true
}

variable "yc_folder_id" {
  type        = string
  description = "ID каталога (из GitHub Secrets)"
  sensitive   = true
}

variable "yc_access_key" {
  type        = string
  description = "AccessKey для S3 (из GitHub Secrets)"
  sensitive   = true
}

variable "yc_secret_key" {
  type        = string
  description = "SecretKey для S3 (из GitHub Secrets)"
  sensitive   = true
}

variable "yc_zone" {
  type        = string
  description = "Зона DNS облака"
  sensitive   = true
}

variable "ssh_public_key" {
  type        = string
  default     = ""
  description = "SSH public key for VM access"
  sensitive   = true
}
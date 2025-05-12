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

variable "ssh_pub_key" {
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDcwUiXDavosFAnxas4PQrPwQLH8UuAR3QjD5Gz42895F0/ohc4LxVIzECMij7tOxCdFpQHnLri7Pl7e8UOGj1q2JD5yFIPSlwTdFBPoWriXuBxWnB6Hplz6cy3mE5JgX4vTRiN3bPS4HkcxXtk2JtnoJ66Qj9uqDxslam8qCcEfbZhYABY04hXGbN59WjLPNQ+9stI2HVAV4Wvfmc2K3Hzapbg4+0bqNS3Qfsw+0h+SBoqb/A4VdYdlS02nEpEFhYFRXs76nUHsoRwpcqDehlyhnAaEm0CnOASt8g+ZNVDCzR8FANYQhEq15Viwwb8MvUQtU9uTtJqGxs9GYyuOUUCbvOHH9C7CeZjPBL18diqbhIxWPqoI/H8pZFth3cn0rF1O5UQHUBes8LCybFQ7LW0WGXZd4VKRxvBJmmZXK1oKCZa/yS+EmTnh4VoKpag7lEzJ6fnH5suOTpO/tyhtILCWigWTbty5h2sq+XxOlbW3NeakvZabyiV5DdD9QlQbHk= igor_gruzdo@MacBook-Pro-Igor.local"
  description = "SSH public key for VM access"
  sensitive   = true
}

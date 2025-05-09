output "vm_ip" {
  description = "Public IP-адрес виртуальной машины для деплоя"
  value       = yandex_compute_instance.vm.network_interface[0].nat_ip_address
  sensitive   = false  # Можно установить true, если нужно скрыть в логах
}

output "bucket_name" {
  description = "Имя созданного S3 бакета для хранения статики"
  value       = yandex_storage_bucket.bucket.bucket
}
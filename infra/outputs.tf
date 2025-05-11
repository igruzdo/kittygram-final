output "vm_ip" {
  description = "Public IP-адрес виртуальной машины для деплоя"
  value       = yandex_compute_instance.vm.network_interface[0].nat_ip_address
  sensitive   = false
}

output "ssh_pub_key" {
  description = "Публичный ключ"
  value       = yandex_compute_instance.vm.metadata.ssh-pub-key
  sensitive   = true
}

output "ssh_priv_key" {
  description = "Приватный ключ"
  value       = yandex_compute_instance.vm.metadata.ssh-priv-key
  sensitive   = true
}
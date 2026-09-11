output "vm_1_name" {
  description = "Имя созданной виртуальной машины"
  value       = yandex_compute_instance.vm_1.name
}

output "vm_1_public_ip" {
  description = "Публичный IP-адрес виртуальной машины"
  value       = yandex_compute_instance.vm_1.network_interface.0.nat_ip_address
}

output "kittygram_url" {
  description = "URL для tests.yml"
  value       = "http://${yandex_compute_instance.vm_1.network_interface[0].nat_ip_address}:${var.gateway_port}"
}

output "ssh_command" {
  description = "SSH-команда для подключения к виртуальной машине"
  value       = "ssh ${var.ssh_user}@${yandex_compute_instance.vm_1.network_interface[0].nat_ip_address}"
}
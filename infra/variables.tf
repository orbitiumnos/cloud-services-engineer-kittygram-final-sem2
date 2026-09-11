variable "vpc_name" {
  description = "VPC Name"
  type        = string
  default     = "kittygram-network"
}

variable "net_cidr" {
  description = "Subnet structure"
  type = list(object({
    name   = string
    zone   = string
    prefix = string
  }))

  default = [
    { name = "default-ru-central1-b", zone = "ru-central1-b", prefix = "10.128.1.0/24" },
    { name = "default-ru-central1-a", zone = "ru-central1-a", prefix = "10.129.1.0/24" },
    { name = "default-ru-central1-d", zone = "ru-central1-d", prefix = "10.130.1.0/24" },
  ]
}

variable "vm_1_name" {
  type        = string
  default     = "vm-kittygram"
}

variable "aws_region" {
  description = "AWS Region name"
  type        = string
}

variable "ssh_user" {
  description = "Аккаунт"
  type        = string
  default     = "orbitiumnos"
}

variable "ssh_key" {
  description = "SSH Public Key"
  type        = string
}

variable "cloud_id" {
  description = "Cloud ID"
  type        = string
}

variable "folder_id" {
  description = "Folder ID"
  type        = string
}

variable "zone" {
  description = "Зона доступности по умолчанию"
  type        = string
  default     = "ru-central1-a"
}

variable "platform_id" {
  description = "Платформа ВМ"
  type        = string
  default     = "standard-v3"
}

variable "image_family" {
  description = "Семейство образа ОС"
  type        = string
  default     = "ubuntu-2404-lts"
}

variable "cores" {
  description = "Количество ядер CPU"
  type        = number
  default     = 2
}

variable "memory" {
  description = "Объем RAM (ГБ)"
  type        = number
  default     = 4
}

variable "disk_type" {
  description = "Тип диска (network-hdd, network-ssd)"
  type        = string
  default     = "network-ssd"
}

variable "disk_size" {
  description = "Размер диска (ГБ)"
  type        = number
  default     = 8
}

variable "nat" {
  description = "Назначать публичный IP"
  type        = bool
  default     = true
}

variable "gateway_port" {
  description = "Public HTTP port of the gateway service"
  type        = number
  default     = 8080
}
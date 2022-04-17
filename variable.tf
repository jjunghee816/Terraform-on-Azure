variable "prefix" {
  description = "This prefix will be included in the name of most resources."
  type        = string
}

variable "env" {
  description = "Environment of launching resources."
  type        = string
}

variable "tier" {
  description = "The Service Tier."
  type        = list(string)
}

variable "location" {
  description = "The Azure region to launch resources."
  type        = string
  default     = "Korea Central"
}

variable "numbering" {
  description = "Numbering to Resources"
  type        = list(string)
}

variable "subnet_addr" {
  description = "Subnet Address"
  type        = list(string)
}

variable "wfh_ip" {
  description = "Connecting IP on Work form Home."
  type        = string
  sensitive   = true
}

variable "web_priv_ip" {
  description = "Private IP using Web Tier."
  type        = list(string)
  sensitive   = true
}

variable "was_priv_ip" {
  description = "Private IP using WAS Tier."
  type        = list(string)
  sensitive   = true
}

variable "zone" {
  description = "Availability Zone located in VM."
  type        = list(string)
}

variable "vm_size" {
  description = "Specifies the size of the virtual machine."
  type        = string
  default     = "Standard_D2s_v4"
}

variable "centos_publisher" {
  description = "Name of the publisher of the image (az vm image list)"
  type        = string
  default     = "Canonical"
}

variable "centos_offer" {
  description = "Name of the offer (az vm image list)"
  type        = string
  default     = "UbuntuServer"
}

variable "centos_sku" {
  description = "Image SKU to apply (az vm image list)"
  type        = string
  default     = "18.04-LTS"
}

variable "ubuntu_publisher" {
  description = "Name of the publisher of the image (az vm image list)"
  type        = string
  default     = "Canonical"
}

variable "ubuntu_offer" {
  description = "Name of the offer (az vm image list)"
  type        = string
  default     = "UbuntuServer"
}

variable "ubuntu_sku" {
  description = "Image SKU to apply (az vm image list)"
  type        = string
  default     = "18.04-LTS"
}

variable "image_version" {
  description = "Version of the image to apply (az vm image list)"
  type        = string
  default     = "latest"
}

variable "mysql_sku" {
  description = "The tier and generation of MySQL Service to deploy (B, GP, MP / 1, 2, 8)"
  type        = string
  default     = "GP_Gen5_2"
}

variable "mysql_version" {
  description = "The version of a MySQL server to deploy (5.6, 5.7, 8.0)"
  type        = string
  default     = "5.7"
}

variable "admin_username" {
  description = "Administrator user name for linux and mysql"
  type        = string
  sensitive   = true
}

variable "admin_password" {
  description = "Administrator password for linux and mysql"
  type        = string
  sensitive   = true
}
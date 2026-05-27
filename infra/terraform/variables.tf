variable "prefix" {
  description = "Prefix used for all resource names."
  type        = string
  default     = "k3s-demo"
}

variable "location" {
  description = "Azure region for all resources."
  type        = string
  default     = "eastus"
}

variable "resource_group_name" {
  description = "Name of the resource group."
  type        = string
  default     = "k3s-demo-rg"
}

variable "vm_name" {
  description = "VM name"
  type        = string
  default     = "k3s-vm"
}

variable "vm_size" {
  description = "Size of the Azure VM."
  type        = string
  default     = "Standard_B2s"
}

variable "admin_username" {
  description = "Admin username for the VM."
  type        = string
  default     = "azureuser"
}

variable "ssh_public_key_path" {
  description = "Path to your SSH public key file."
  type        = string
  default = "~/.ssh/id_ed25519.pub"
}
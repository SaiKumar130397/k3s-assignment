output "vm_public_ip" {
  description = "Public IP of VM"
  value       = azurerm_public_ip.public_ip.ip_address
}

output "ssh_command" {
  value = "ssh azureuser@${azurerm_public_ip.public_ip.ip_address}"
}

output "application_url" {
  value = "http://${azurerm_public_ip.public_ip.ip_address}:30080"
}
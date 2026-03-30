output "app_url" {
  value       = "https://${azurerm_linux_web_app.main.default_hostname}"
  description = "URL of the deployed web app"
}

output "outbound_ip_addresses" {
  value       = azurerm_linux_web_app.main.outbound_ip_addresses
  description = "Outbound IP addresses of the web app"
}

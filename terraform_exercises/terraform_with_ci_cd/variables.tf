variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "resource_group_location" {
  type        = string
  description = "Location of the resource group"
}

variable "app_service_plan_name" {
  type        = string
  description = "Name of the app service plan"
}

variable "app_service_name" {
  type        = string
  description = "Name of the app service"
}

variable "sql_server_name" {
  type        = string
  description = "Name of the SQL server"
}

variable "sql_database_name" {
  type        = string
  description = "Name of the SQL database"
}

variable "sql_admin_login" {
  type        = string
  description = "SQL administrator username"
}

variable "sql_admin_password" {
  type        = string
  description = "SQL administrator password"
  sensitive   = true
}

variable "firewall_rule_name" {
  type        = string
  description = "Name of the firewall rule"
}

variable "github_repo_url" {
  type        = string
  description = "GitHub repository URL"
}
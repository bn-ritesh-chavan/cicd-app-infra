variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "Central India"
}

variable "service_plan_name" {
  description = "App Service Plan name"
  type        = string
}

variable "web_app_name" {
  description = "Name of the Azure Web App"
  type        = string
}

variable "docker_image_name" {
  description = "Docker image name"
  type        = string
  default     = "rit3sh18/cicd-app:latest"
}
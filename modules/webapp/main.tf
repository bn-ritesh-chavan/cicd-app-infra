resource "azurerm_resource_group" "rg" {
   name = var.resource_group_name
   location = var.location
}

resource "azurerm_service_plan" "asp" {

    name = var.service_plan_name
    location = var.location
    resource_group_name = var.resource_group_name
    os_type = "Linux"
    sku_name = "B1"

}

resource "azurerm_linux_web_app" "webapp" {
  name = var.web_app_name
  location = var.location
  resource_group_name = var.resource_group_name
  service_plan_id = azurerm_service_plan.asp.id

  site_config {
    application_stack {
      docker_image_name = var.docker_image_name
      docker_registry_url = "https://index.docker.io"
    }
   
  }
}   
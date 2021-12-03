terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.15.0"
    }
  }
}
provider "docker" {
  host    = "tcp://docker:2345"
}

# Pulls the image
resource "docker_image" "ubuntu" {
  name = var.container_image
}

#Create a container based on a module
module "docker_container" {
  source          = "/home/scrapbook/tutorial/safefloat-workshop/modules/container"
  container_name  = var.container_name
  container_image = docker_image.ubuntu.latest
}

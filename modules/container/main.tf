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



# Create a container
resource "docker_container" "foo" {
  image = var.container_image
  name  = var.container_name
}

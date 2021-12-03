provider "docker" {
  version = "~> 2.15.0"
  host    = "unix:///var/run/docker.sock"
}

# Pulls the image
resource "docker_image" "ubuntu" {
  name = "ubuntu:latest"
}

#Create a container based on a module
module "docker_container" {
  source          = "../modules/container"
  container_name  = var.container_name
  container_image = docker_image.ubuntu.latest
}

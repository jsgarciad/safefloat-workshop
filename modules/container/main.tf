# Create a container
resource "docker_container" "foo" {
  image = var.container_image
  name  = var.container_name
}

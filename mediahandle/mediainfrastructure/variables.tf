variable "container_name" {
  description = "Name of container"
  type        = string
  default     = "foo"
}
variable "container_image" {
  description = "Name of container image"
  type        = string
  default     = "ubuntu:latest"
}

variable "environment" {
  description = "environment to deploy"
  type        = string
  default     = "development"
}
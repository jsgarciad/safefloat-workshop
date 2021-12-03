variable "container_name" {
  description = "Name of container"
  type        = string
  default     = "foo"
}

variable "environment" {
  description = "environment to deploy"
  type        = string
  default     = "development"
}
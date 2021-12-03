terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.15.0"
    }
  }
}


module "deploy_mediainfrastructure" {
  source = "/home/scrapbook/tutorial/safefloat-workshop/mediahandle/mediainfrastructure"

  environment     = "production"
  container_name  = "safefloatapp"
  container_image = "nginx:latest"

}
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.15.0"
    }
  }
}


module "deploy_mediainfrastructure" {
  source = "../mediainfrastructure"

  environment    = "production"
  container_name = "safefloatapp"

}
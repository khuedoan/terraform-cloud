terraform {
  required_version = "~> 1.1.0"

  backend "remote" {
    organization = "khuedoan"

    workspaces {
      name = "terraform-cloud"
    }
  }
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "~> 0.26.0"
    }
  }
}

provider "tfe" {
  # Authenticate using the TFE_TOKEN environment variable
}

data "tfe_organization" "khuedoan" {
  name = "khuedoan"
}

resource "tfe_workspace" "domain" {
  name                          = "domain"
  description                   = "https://github.com/khuedoan/domain"
  organization                  = data.tfe_organization.khuedoan.name
  terraform_version             = "~> 1.2.0"
  file_triggers_enabled         = false
  queue_all_runs                = false
  structured_run_output_enabled = false
  allow_destroy_plan            = false
}

resource "tfe_workspace" "horus" {
  name              = "horus"
  description       = "https://github.com/khuedoan/horus"
  organization      = data.tfe_organization.khuedoan.name
  terraform_version = "~> 1.1.0"
  queue_all_runs    = false
  execution_mode    = "local"
}

resource "tfe_workspace" "virtual_networks" {
  name              = "virtual-networks"
  description       = "https://github.com/khuedoan/virtual-networks"
  organization      = data.tfe_organization.khuedoan.name
  terraform_version = "~> 1.1.0"
  queue_all_runs    = false
}

resource "tfe_workspace" "freevpn" {
  name              = "freevpn"
  description       = "https://github.com/khuedoan/freevpn"
  organization      = data.tfe_organization.khuedoan.name
  terraform_version = "~> 1.1.0"
  queue_all_runs    = false
  execution_mode    = "local"
}

resource "tfe_workspace" "homelab_external" {
  name              = "homelab-external"
  description       = "https://github.com/khuedoan/homelab"
  organization      = data.tfe_organization.khuedoan.name
  queue_all_runs    = false
  terraform_version = "~> 1.1.0"
  execution_mode    = "local"
}

data "tfe_organization" "khuedoan" {
  name = "khuedoan"
}

resource "tfe_workspace" "domain" {
  name                          = "domain"
  description                   = "https://github.com/khuedoan/domain"
  organization                  = data.tfe_organization.khuedoan.name
  file_triggers_enabled         = false
  queue_all_runs                = false
  structured_run_output_enabled = false
  allow_destroy_plan            = false
}

resource "tfe_workspace" "freecloud" {
  name           = "freecloud"
  description    = "https://github.com/khuedoan/freecloud"
  organization   = data.tfe_organization.khuedoan.name
  queue_all_runs = false
  execution_mode = "local"
}

resource "tfe_workspace" "virtual_networks" {
  name           = "virtual-networks"
  description    = "https://github.com/khuedoan/virtual-networks"
  organization   = data.tfe_organization.khuedoan.name
  queue_all_runs = false
}

resource "tfe_workspace" "vpn" {
  name           = "vpn"
  description    = "https://github.com/khuedoan/vpn"
  organization   = data.tfe_organization.khuedoan.name
  queue_all_runs = false
}

provider "digitalocean" {
  # token = do_token
}

terraform {
  backend "remote" {
    organization = "prod-openvpn-droplet"

    workspaces {
      name = "openvpn-app-deploy"
    }
  }
}

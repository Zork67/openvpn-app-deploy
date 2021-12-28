provider "digitalocean" {
}

terraform {
  backend "remote" {
    organization = "prod-openvpn-droplet"

    workspaces {
      name = "openvpn-app-deploy"
    }
  }
}

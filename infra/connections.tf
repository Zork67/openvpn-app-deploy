provider "digitalocean" {
  # Configure the DigitalOcean Provider
}

terraform {
  backend "remote" {
    organization = "prod-openvpn-droplet"

    workspaces {
      name = "openvpn-app-deploy"
    }
  }
}

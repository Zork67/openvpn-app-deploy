provider "digitalocean" {
  # Configure the DigitalOcean Provider
}

terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "prod-openvpn-droplet"

    workspaces {
      name = "openvpn-app-deploy"
    }
  }
}

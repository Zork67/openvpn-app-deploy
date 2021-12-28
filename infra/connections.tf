provider "digitalocean" {
  # Configure the DigitalOcean Provider
}

terraform {
  cloud {
    organization = "prod-openvpn-droplet"

    workspaces {
      name = "openvpn-app-deploy"
    }
  }
}

credentials "app.terraform.io" {
  token = var.token
}

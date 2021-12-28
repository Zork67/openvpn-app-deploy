module "prod-openvpn-droplet" {
  source          = "../tf-modules/tf-digitalocean-instance"
  instances       = local.prod_instance
  image_name      = local.image_name
  hostname_prefix = "prod-openvpn-instance"
  region_slug     = local.availability_zone
  tags            = local.prod_metadata_tags
}

module "dev-openvpn-droplet" {
  source          = "../tf-modules/tf-digitalocean-instance"
  instances       = local.dev_instance
  image_name      = local.image_name
  hostname_prefix = "dev-openvpn-instance"
  region_slug     = local.availability_zone
  tags            = local.dev_metadata_tags
}
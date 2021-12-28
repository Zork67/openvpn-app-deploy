module "prod-openvpn-droplet" {
  source = "../tf-modules/tf-digitalocean-instance"
  instances = local.instance_size
  image = local.image_name
  hostname_prefix = "prod-openvpn-instance"
  region = local.availability_zone
  size = instance_size
  metadata_tag = local.metadata_tag
}

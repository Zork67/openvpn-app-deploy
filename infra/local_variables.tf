locals {
  prod_instance      = 0
  dev_instance       = 1
  image_name         = "openvpn-18-04"
  availability_zone  = "lon1"
  prod_metadata_tags = ["prod", "vpn"]
  dev_metadata_tags  = ["dev", "vpn"]
}
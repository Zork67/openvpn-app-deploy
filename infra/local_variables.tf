locals {
  prod_instance      = 0
  dev_instance       = 1
  image_name         = "ubuntu-20-04-x64"
  availability_zone  = "lon1"
  prod_metadata_tags = ["prod", "vpn"]
  dev_metadata_tags  = ["dev", "vpn"]
}
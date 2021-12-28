resource "digitalocean_droplet" "vm" {
  count  = var.instances
  image  = data.digitalocean_image.main.name
  name   = "${var.hostname_prefix}-${var.region_slug}-${count.index+1}.${var.dns_suffix}"
  region = data.digitalocean_region.main.name
  size   = element(data.digitalocean_sizes.main.sizes, 0).slug
  tags   = var.tags
}

data "digitalocean_image" "main" {
  name = var.image_name
}

data "digitalocean_region" "main" {
  slug = var.region_slug
}

data "digitalocean_sizes" "main" {
  filter {
    key    = "slug"
    values = var.size_slug
  }
}
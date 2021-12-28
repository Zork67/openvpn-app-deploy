data "digitalocean_images" "main" {
  filter {
    key    = "distribution"
    values = [var.image_name]
  }
  filter {
    key    = "regions"
    values = [var.region_slug]
  }
  sort {
    key       = "created"
    direction = "desc"
  }
}

data "digitalocean_regions" "available" {
  filter {
    key    = "available"
    values = ["var.region_slug"]
  }

  sort {
    key       = "name"
    direction = "desc"
  }

}

data "digitalocean_sizes" "main" {
  filter {
    key    = "regions"
    values = [var.region_slug]
  }

  sort {
    key       = "price_monthly"
    direction = "asc"
  }
}

resource "digitalocean_droplet" "vm" {
  count  = var.instances
  image  = element(data.digitalocean_images.main.images, 0).slug
  name   = "${var.hostname_prefix}-${var.region_slug}-${count.index + 1}.${var.dns_suffix}"
  region = element(data.digitalocean_regions.available.regions, 0).slug
  size   = element(data.digitalocean_sizes.main.sizes, 0).slug
  tags   = var.tags
}

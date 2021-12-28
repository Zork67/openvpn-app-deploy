output "instance_name" {
  value = digitalocean_droplet.vm.*.name
}
output "instance_ip_addr" {
  value = digitalocean_droplet.vm.*.ipv4_address
}
output "instance_region" {
  value = digitalocean_droplet.vm.*.region
}
output "instance_price_monthly" {
  value = digitalocean_droplet.vm.*.price_monthly
}

output "instance_name" {
  value = digitalocean_droplet.vm.prod-openvpn-droplet.name
}
output "instance_ip_addr" {
  value = digitalocean_droplet.vm.prod-openvpn-droplet.ipv4_address
}
output "instance_region" {
  value = digitalocean_droplet.vm.prod-openvpn-droplet.region
}
output "instance_price_monthly" {
  value = digitalocean_droplet.vm.prod-openvpn-droplet.price_monthly
}

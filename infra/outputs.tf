output "instance_name" {
  value = [
    module.dev-openvpn-droplet.instance_name,
    module.prod-openvpn-droplet.instance_name
  ]
}

output "instance_ip_addr" {
  value = [
    module.dev-openvpn-droplet.instance_ip_addr,
    module.prod-openvpn-droplet.instance_ip_addr
  ]
}

output "instance_region" {
  value = [
    module.dev-openvpn-droplet.instance_region,
    module.prod-openvpn-droplet.instance_region
  ]
}

output "instance_price_monthly" {
  value = [
    module.dev-openvpn-droplet.instance_price_monthly,
    module.prod-openvpn-droplet.instance_price_monthly
  ]
}

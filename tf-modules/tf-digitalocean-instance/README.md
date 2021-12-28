# DO module

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_digitalocean"></a> [digitalocean](#requirements\_digitalocean) | 2.16 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_digitalocean"></a> [digitalocean](#providers\_digitalocean) | 2.16 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| digitalocean_droplet.vm | resource |
| digitalocean_image.slug | data source |
| digitalocean_region.available | data source |
| digitalocean_sizes.slug | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_image_name"></a> [image\_name](#inputs\_image\_name) | Instance image name.  | `string` | `""` | yes |
| <a name="input_hostname_prefix"></a> [hostname\_prefix](#inputs\_hostname\_prefix) | Hostname_prefix part of FQDN. Should be less than 30 symbols.  | `string` | `""` | yes |
| <a name="input_dns_suffix"></a> [dns\_suffix](#inputs\_dns_suffix) | Domain name part of FQDN.  | `string` | `"vooger.dc"` | no |
| <a name="input_region_slug"></a> [region\_slug](#inputs\_region\_slug) | Instance region slug.  | `string` | `"ams3"` | no |
| <a name="input_instances"></a> [instances](#inputs\_instances) | The number of instances to create.  | `number` | `0` | no |
| <a name="input_size_slug"></a> [size\_slug](#inputs\_size\_slug) | Instance size slug.  | `string` | `"s-1vcpu-1gb"` | no |
| <a name="input_tags"></a> [tags](#inputs\_tags) | List of Instance tags.  | `string` | `null` | no |


## Outputs

| Name | Description |
|------|-------------|
| <a name="output_name"></a> [name](#outputs\_name) | n/a |
| <a name="output_ipv4_address"></a> [ipv4\_address](#outputs\ipv4_address) | n/a |
| <a name="output_region"></a> [region](#outputs\_region) | n/a |
| <a name="output_price_monthly"></a> [price\_monthly](#outputs\_price_monthly) | n/a |



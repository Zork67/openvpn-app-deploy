# Terraform infrastructure 

## Requirements

| Name | Type |
|------|------|
| <a name="requirement_tf-modules_tf-digitalocean-instance"></a> [tf-digitalocean-instance](#requirements\_tf-modules\_tf-digitalocean-instance)  | global TF module |
|<a name="requirement_app.terraform.io"></a> [Terraform Cloud](#requirements\_tf-modules\_tf-digitalocean-instance) ||

## Providers

| Name | Version |
|------|---------|
| <a name="provider_digitalocean"></a> [digitalocean](#providers\_digitalocean) | 2.16 |

## Local module

No modules.

### TF project structure
```
  ./
  ├── connections.tf              - Description of the terraform backend and auth
  ├── droplets.tf                 - Modules of hosts
  ├── local_variables.tf          - Infrastructure management 
  ├── output.tf
  ├── provider.tf                 - Required providers
  ├── README.md                   - This documentation
```

### TF project Variables

[local_variables.tf](local_variables.tf)

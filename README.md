<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.15 |
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | 3.14.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_cloudflare"></a> [cloudflare](#provider\_cloudflare) | 3.14.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [cloudflare_record.main](https://registry.terraform.io/providers/cloudflare/cloudflare/3.14.0/docs/resources/record) | resource |
| [cloudflare_zone.main](https://registry.terraform.io/providers/cloudflare/cloudflare/3.14.0/docs/data-sources/zone) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloudflare_api_key"></a> [cloudflare\_api\_key](#input\_cloudflare\_api\_key) | The Cloudflare API key. This can also be specified with the CLOUDFLARE\_API\_KEY shell environment variable. | `string` | n/a | yes |
| <a name="input_cloudflare_email"></a> [cloudflare\_email](#input\_cloudflare\_email) | The email associated with the account. This can also be specified with the CLOUDFLARE\_EMAIL shell environment variable. | `string` | n/a | yes |
| <a name="input_dns_entry"></a> [dns\_entry](#input\_dns\_entry) | The address prefix and name to use for the subnet. | `map(any)` | <pre>{<br>  "domain_1": {<br>    "name": "terraform",<br>    "proxied": "true",<br>    "ttl": "3600",<br>    "type": "A",<br>    "value": [<br>      "192.168.0.11"<br>    ]<br>  }<br>}</pre> | no |
| <a name="input_zone_name"></a> [zone\_name](#input\_zone\_name) | The name of the zone. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->

## How to use
```

```
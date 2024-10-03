<!-- BEGIN_TF_DOCS -->
## Modules

No modules.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dns_name"></a> [dns\_name](#input\_dns\_name) | The DNS name of the zone, must end with a period | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The GCP project ID | `string` | n/a | yes |
| <a name="input_zone_name"></a> [zone\_name](#input\_zone\_name) | The name of the DNS zone | `string` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | A description of the zone | `string` | `"Managed by Terraform"` | no |
| <a name="input_records"></a> [records](#input\_records) | A list of DNS records to create in the zone | <pre>list(object({<br>    name    = string<br>    type    = string<br>    ttl     = number<br>    rrdatas = list(string)<br>  }))</pre> | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_zone_id"></a> [zone\_id](#output\_zone\_id) | The ID of the created zone |
| <a name="output_zone_name_servers"></a> [zone\_name\_servers](#output\_zone\_name\_servers) | The name servers for the created zone |
<!-- END_TF_DOCS -->
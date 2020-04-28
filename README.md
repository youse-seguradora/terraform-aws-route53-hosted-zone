# AWS Route53 Hosted Zone Terraform module

Terraform module to create a Hosted Zone at AWS Route53 resource.

## Prerequisites

This module has a few dependencies:

- [Terraform 0.12](https://learn.hashicorp.com/terraform/getting-started/install.html)
- [Go](https://golang.org/doc/install)
- [github.com/stretchr/testify/assert](https://github.com/stretchr/testify)
- [github.com/gruntwork-io/terratest/modules/terraform](https://github.com/gruntwork-io/terratest)

## Examples

**IMPORTANT:** Since the `master` branch used in `source` varies based on new modifications, we suggest that you use the release versions [here](https://github.com/youse-seguradora/terraform-aws-route53-record/releases).

Here are some examples of how you can use this module in your inventory structure:

### Simple

```hcl
module "route53_zone" {
  source = "git@github.com:youse-seguradora/terraform-aws-route53-hosted-zone.git"

  domain_name = var.name
}

variable "name" {}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Providers

| Name | Version |
|------|---------|
| aws | ~> 2.58 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| comment | A comment for the hosted zone. | `string` | `"Managed by Terraform"` | no |
| domain\_name | This is the name of the hosted zone. | `string` | n/a | yes |
| tags | A map of tags to assign to the zone. | `map(string)` | `{}` | no |
| vpcs | Configuration block(s) specifying VPC(s) to associate with a private hosted zone. | <pre>list(object({<br>    vpc_id     = string<br>    vpc_region = string<br>  }))</pre> | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| name | The Domain Name. |
| name\_serves | A list of name servers in associated (or default) delegation set. Find more about delegation sets in AWS docs. |
| zone\_id | The Hosted Zone ID. This can be referenced by zone records. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
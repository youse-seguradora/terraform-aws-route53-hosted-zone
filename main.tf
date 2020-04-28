resource "aws_route53_zone" "main" {

  name    = var.domain_name
  comment = var.comment

  dynamic "vpc" {
    for_each = var.vpcs
    content {
      vpc_id     = vpc.value.vpc_id
      vpc_region = vpc.value.vpc_region
    }
  }

  tags = var.tags
}

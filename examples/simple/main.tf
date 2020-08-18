provider "aws" {
  region  = "us-east-2"
  profile = "cicd"
}

#######################
###   AWS Route53   ###
#######################
module "route53_zone" {
  source = "../.."

  domain_name = var.name
}

variable "name" {}

output "this_zone_id" {
  value = module.route53_zone.zone_id
}
output "this_name_server" {
  value = module.route53_zone.name_serves
}
output "this_name" {
  value = module.route53_zone.name
}

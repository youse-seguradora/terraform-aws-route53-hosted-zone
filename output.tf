output "zone_id" {
  description = "The Hosted Zone ID. This can be referenced by zone records."
  value       = aws_route53_zone.main.zone_id
}

output "name_serves" {
  description = "A list of name servers in associated (or default) delegation set. Find more about delegation sets in AWS docs."
  value       = aws_route53_zone.main.name_servers
}

output "name" {
  value       = aws_route53_zone.main.name
  description = "The Domain Name."
}

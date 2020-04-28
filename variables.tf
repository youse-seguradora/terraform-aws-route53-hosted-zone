variable "domain_name" {
  description = "This is the name of the hosted zone."
  type        = string
}

variable "comment" {
  description = "A comment for the hosted zone."
  type        = string
  default     = "Managed by Terraform"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "A map of tags to assign to the zone."
}

variable "vpcs" {
  description = "Configuration block(s) specifying VPC(s) to associate with a private hosted zone."
  type = list(object({
    vpc_id     = string
    vpc_region = string
  }))
  default = []
}

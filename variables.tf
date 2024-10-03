variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "zone_name" {
  description = "The name of the DNS zone"
  type        = string
}

variable "dns_name" {
  description = "The DNS name of the zone, must end with a period"
  type        = string
}

variable "description" {
  description = "A description of the zone"
  type        = string
  default     = "Managed by Terraform"
}

variable "records" {
  description = "A list of DNS records to create in the zone"
  type = list(object({
    name    = string
    type    = string
    ttl     = number
    rrdatas = list(string)
  }))
  default = []
}

module "dns-zone" {
  source      = "../"
  project_id  = var.project_id
  zone_name   = "x-com-zone"
  dns_name    = "x.com."
  description = "Zone DNS pour x.com. Managed by Terraform."
  records = [
    {
      name    = "www"
      type    = "A"
      ttl     = 300
      rrdatas = ["x.x.x.x"]
    },
    {
      name    = ""
      type    = "MX"
      ttl     = 3600
      rrdatas = ["x", "x"]
    }
  ]
}

resource "google_dns_managed_zone" "zone" {
  project     = var.project_id
  name        = var.zone_name
  dns_name    = var.dns_name
  description = var.description
}

resource "google_dns_record_set" "records" {
  for_each = {
    for record in var.records : "${record.name}-${record.type}" => record
  }

  project      = var.project_id
  managed_zone = google_dns_managed_zone.zone.name
  name         = "${each.value.name}.${var.dns_name}"
  type         = each.value.type
  ttl          = each.value.ttl
  rrdatas      = each.value.rrdatas
}

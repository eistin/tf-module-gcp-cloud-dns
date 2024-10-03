output "zone_name_servers" {
  description = "The name servers for the created zone"
  value       = google_dns_managed_zone.zone.name_servers
}

output "zone_id" {
  description = "The ID of the created zone"
  value       = google_dns_managed_zone.zone.id
}

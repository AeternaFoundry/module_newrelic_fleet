output "fleets_id" {
  description = "Map of id values across all fleets, keyed the same as var.fleets"
  value       = { for k, v in newrelic_fleet.fleets : k => v.id }
}
output "fleets_description" {
  description = "Map of description values across all fleets, keyed the same as var.fleets"
  value       = { for k, v in newrelic_fleet.fleets : k => v.description }
}
output "fleets_managed_entity_type" {
  description = "Map of managed_entity_type values across all fleets, keyed the same as var.fleets"
  value       = { for k, v in newrelic_fleet.fleets : k => v.managed_entity_type }
}
output "fleets_name" {
  description = "Map of name values across all fleets, keyed the same as var.fleets"
  value       = { for k, v in newrelic_fleet.fleets : k => v.name }
}
output "fleets_operating_system" {
  description = "Map of operating_system values across all fleets, keyed the same as var.fleets"
  value       = { for k, v in newrelic_fleet.fleets : k => v.operating_system }
}
output "fleets_organization_id" {
  description = "Map of organization_id values across all fleets, keyed the same as var.fleets"
  value       = { for k, v in newrelic_fleet.fleets : k => v.organization_id }
}
output "fleets_tags" {
  description = "Map of tags values across all fleets, keyed the same as var.fleets"
  value       = { for k, v in newrelic_fleet.fleets : k => v.tags }
}


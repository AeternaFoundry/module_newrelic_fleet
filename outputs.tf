output "fleets_id" {
  description = "Map of id values across all fleets, keyed the same as var.fleets except keys with no id are omitted"
  value       = { for k, v in newrelic_fleet.fleets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "fleets_description" {
  description = "Map of description values across all fleets, keyed the same as var.fleets except keys with no description are omitted"
  value       = { for k, v in newrelic_fleet.fleets : k => v.description if v.description != null && length(v.description) > 0 }
}
output "fleets_managed_entity_type" {
  description = "Map of managed_entity_type values across all fleets, keyed the same as var.fleets except keys with no managed_entity_type are omitted"
  value       = { for k, v in newrelic_fleet.fleets : k => v.managed_entity_type if v.managed_entity_type != null && length(v.managed_entity_type) > 0 }
}
output "fleets_name" {
  description = "Map of name values across all fleets, keyed the same as var.fleets except keys with no name are omitted"
  value       = { for k, v in newrelic_fleet.fleets : k => v.name if v.name != null && length(v.name) > 0 }
}
output "fleets_operating_system" {
  description = "Map of operating_system values across all fleets, keyed the same as var.fleets except keys with no operating_system are omitted"
  value       = { for k, v in newrelic_fleet.fleets : k => v.operating_system if v.operating_system != null && length(v.operating_system) > 0 }
}
output "fleets_organization_id" {
  description = "Map of organization_id values across all fleets, keyed the same as var.fleets except keys with no organization_id are omitted"
  value       = { for k, v in newrelic_fleet.fleets : k => v.organization_id if v.organization_id != null && length(v.organization_id) > 0 }
}
output "fleets_tags" {
  description = "Map of tags values across all fleets, keyed the same as var.fleets except keys with no tags are omitted"
  value       = { for k, v in newrelic_fleet.fleets : k => v.tags if v.tags != null && length(v.tags) > 0 }
}


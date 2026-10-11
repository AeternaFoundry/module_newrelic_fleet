resource "newrelic_fleet" "fleets" {
  for_each = var.fleets

  managed_entity_type = each.value.managed_entity_type
  name                = each.value.name
  description         = each.value.description
  operating_system    = each.value.operating_system
  organization_id     = each.value.organization_id
  tags                = each.value.tags
}


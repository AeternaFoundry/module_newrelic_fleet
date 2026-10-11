variable "fleets" {
  description = <<EOT
Map of fleets, attributes below
Required:
    - managed_entity_type
    - name
Optional:
    - description
    - operating_system
    - organization_id
    - tags
EOT

  type = map(object({
    managed_entity_type = string
    name                = string
    description         = optional(string)
    operating_system    = optional(string)
    organization_id     = optional(string)
    tags                = optional(list(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.fleets : (
        v.operating_system == null || (contains(["LINUX", "WINDOWS"], v.operating_system))
      )
    ])
    error_message = "must be one of: \"LINUX\", \"WINDOWS\""
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}


variable "monitoring_alarms_lookup" {
  description = <<EOT
Map of monitoring_alarms_lookup, attributes below
Required:
    - compartment_id
Optional:
    - compartment_id_in_subtree
    - display_name
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id            = string
    compartment_id_in_subtree = optional(bool)
    display_name              = optional(string)
    state                     = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}


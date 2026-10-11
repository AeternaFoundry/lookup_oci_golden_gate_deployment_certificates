variable "golden_gate_deployment_certificates_lookup" {
  description = <<EOT
Map of golden_gate_deployment_certificates_lookup, attributes below
Required:
    - deployment_id
Optional:
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    deployment_id = string
    state         = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}


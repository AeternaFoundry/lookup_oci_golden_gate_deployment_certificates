data "oci_golden_gate_deployment_certificates" "golden_gate_deployment_certificates_lookup" {
  for_each = var.golden_gate_deployment_certificates_lookup

  deployment_id = each.value.deployment_id
  state         = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}


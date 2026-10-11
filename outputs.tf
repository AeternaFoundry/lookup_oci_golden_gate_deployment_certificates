output "golden_gate_deployment_certificates_lookup_id" {
  description = "Map of id values across all golden_gate_deployment_certificates_lookup, keyed the same as var.golden_gate_deployment_certificates_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_golden_gate_deployment_certificates.golden_gate_deployment_certificates_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "golden_gate_deployment_certificates_lookup_certificate_collection" {
  description = "Map of certificate_collection values across all golden_gate_deployment_certificates_lookup, keyed the same as var.golden_gate_deployment_certificates_lookup except keys with no certificate_collection are omitted"
  value       = { for k, v in data.oci_golden_gate_deployment_certificates.golden_gate_deployment_certificates_lookup : k => v.certificate_collection if v.certificate_collection != null && length(v.certificate_collection) > 0 }
}
output "golden_gate_deployment_certificates_lookup_deployment_id" {
  description = "Map of deployment_id values across all golden_gate_deployment_certificates_lookup, keyed the same as var.golden_gate_deployment_certificates_lookup except keys with no deployment_id are omitted"
  value       = { for k, v in data.oci_golden_gate_deployment_certificates.golden_gate_deployment_certificates_lookup : k => v.deployment_id if v.deployment_id != null && length(v.deployment_id) > 0 }
}
output "golden_gate_deployment_certificates_lookup_filter" {
  description = "Map of filter values across all golden_gate_deployment_certificates_lookup, keyed the same as var.golden_gate_deployment_certificates_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_golden_gate_deployment_certificates.golden_gate_deployment_certificates_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "golden_gate_deployment_certificates_lookup_state" {
  description = "Map of state values across all golden_gate_deployment_certificates_lookup, keyed the same as var.golden_gate_deployment_certificates_lookup except keys with no state are omitted"
  value       = { for k, v in data.oci_golden_gate_deployment_certificates.golden_gate_deployment_certificates_lookup : k => v.state if v.state != null && length(v.state) > 0 }
}


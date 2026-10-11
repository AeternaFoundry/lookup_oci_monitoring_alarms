output "monitoring_alarms_lookup_id" {
  description = "Map of id values across all monitoring_alarms_lookup, keyed the same as var.monitoring_alarms_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_monitoring_alarms.monitoring_alarms_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "monitoring_alarms_lookup_alarms" {
  description = "Map of alarms values across all monitoring_alarms_lookup, keyed the same as var.monitoring_alarms_lookup except keys with no alarms are omitted"
  value       = { for k, v in data.oci_monitoring_alarms.monitoring_alarms_lookup : k => v.alarms if v.alarms != null && length(v.alarms) > 0 }
}
output "monitoring_alarms_lookup_compartment_id" {
  description = "Map of compartment_id values across all monitoring_alarms_lookup, keyed the same as var.monitoring_alarms_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_monitoring_alarms.monitoring_alarms_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "monitoring_alarms_lookup_compartment_id_in_subtree" {
  description = "Map of compartment_id_in_subtree values across all monitoring_alarms_lookup, keyed the same as var.monitoring_alarms_lookup except keys with no compartment_id_in_subtree are omitted"
  value       = { for k, v in data.oci_monitoring_alarms.monitoring_alarms_lookup : k => v.compartment_id_in_subtree if v.compartment_id_in_subtree != null }
}
output "monitoring_alarms_lookup_display_name" {
  description = "Map of display_name values across all monitoring_alarms_lookup, keyed the same as var.monitoring_alarms_lookup except keys with no display_name are omitted"
  value       = { for k, v in data.oci_monitoring_alarms.monitoring_alarms_lookup : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "monitoring_alarms_lookup_filter" {
  description = "Map of filter values across all monitoring_alarms_lookup, keyed the same as var.monitoring_alarms_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_monitoring_alarms.monitoring_alarms_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "monitoring_alarms_lookup_state" {
  description = "Map of state values across all monitoring_alarms_lookup, keyed the same as var.monitoring_alarms_lookup except keys with no state are omitted"
  value       = { for k, v in data.oci_monitoring_alarms.monitoring_alarms_lookup : k => v.state if v.state != null && length(v.state) > 0 }
}


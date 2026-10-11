output "oracle_database_goldengate_deployments_id" {
  description = "Map of id values across all oracle_database_goldengate_deployments, keyed the same as var.oracle_database_goldengate_deployments except keys with no id are omitted"
  value       = { for k, v in google_oracle_database_goldengate_deployment.oracle_database_goldengate_deployments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "oracle_database_goldengate_deployments_create_time" {
  description = "Map of create_time values across all oracle_database_goldengate_deployments, keyed the same as var.oracle_database_goldengate_deployments except keys with no create_time are omitted"
  value       = { for k, v in google_oracle_database_goldengate_deployment.oracle_database_goldengate_deployments : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "oracle_database_goldengate_deployments_deletion_policy" {
  description = "Map of deletion_policy values across all oracle_database_goldengate_deployments, keyed the same as var.oracle_database_goldengate_deployments except keys with no deletion_policy are omitted"
  value       = { for k, v in google_oracle_database_goldengate_deployment.oracle_database_goldengate_deployments : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "oracle_database_goldengate_deployments_display_name" {
  description = "Map of display_name values across all oracle_database_goldengate_deployments, keyed the same as var.oracle_database_goldengate_deployments except keys with no display_name are omitted"
  value       = { for k, v in google_oracle_database_goldengate_deployment.oracle_database_goldengate_deployments : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "oracle_database_goldengate_deployments_effective_labels" {
  description = "Map of effective_labels values across all oracle_database_goldengate_deployments, keyed the same as var.oracle_database_goldengate_deployments except keys with no effective_labels are omitted"
  value       = { for k, v in google_oracle_database_goldengate_deployment.oracle_database_goldengate_deployments : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "oracle_database_goldengate_deployments_entitlement_id" {
  description = "Map of entitlement_id values across all oracle_database_goldengate_deployments, keyed the same as var.oracle_database_goldengate_deployments except keys with no entitlement_id are omitted"
  value       = { for k, v in google_oracle_database_goldengate_deployment.oracle_database_goldengate_deployments : k => v.entitlement_id if v.entitlement_id != null && length(v.entitlement_id) > 0 }
}
output "oracle_database_goldengate_deployments_gcp_oracle_zone" {
  description = "Map of gcp_oracle_zone values across all oracle_database_goldengate_deployments, keyed the same as var.oracle_database_goldengate_deployments except keys with no gcp_oracle_zone are omitted"
  value       = { for k, v in google_oracle_database_goldengate_deployment.oracle_database_goldengate_deployments : k => v.gcp_oracle_zone if v.gcp_oracle_zone != null && length(v.gcp_oracle_zone) > 0 }
}
output "oracle_database_goldengate_deployments_goldengate_deployment_id" {
  description = "Map of goldengate_deployment_id values across all oracle_database_goldengate_deployments, keyed the same as var.oracle_database_goldengate_deployments except keys with no goldengate_deployment_id are omitted"
  value       = { for k, v in google_oracle_database_goldengate_deployment.oracle_database_goldengate_deployments : k => v.goldengate_deployment_id if v.goldengate_deployment_id != null && length(v.goldengate_deployment_id) > 0 }
}
output "oracle_database_goldengate_deployments_labels" {
  description = "Map of labels values across all oracle_database_goldengate_deployments, keyed the same as var.oracle_database_goldengate_deployments except keys with no labels are omitted"
  value       = { for k, v in google_oracle_database_goldengate_deployment.oracle_database_goldengate_deployments : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "oracle_database_goldengate_deployments_location" {
  description = "Map of location values across all oracle_database_goldengate_deployments, keyed the same as var.oracle_database_goldengate_deployments except keys with no location are omitted"
  value       = { for k, v in google_oracle_database_goldengate_deployment.oracle_database_goldengate_deployments : k => v.location if v.location != null && length(v.location) > 0 }
}
output "oracle_database_goldengate_deployments_name" {
  description = "Map of name values across all oracle_database_goldengate_deployments, keyed the same as var.oracle_database_goldengate_deployments except keys with no name are omitted"
  value       = { for k, v in google_oracle_database_goldengate_deployment.oracle_database_goldengate_deployments : k => v.name if v.name != null && length(v.name) > 0 }
}
output "oracle_database_goldengate_deployments_oci_url" {
  description = "Map of oci_url values across all oracle_database_goldengate_deployments, keyed the same as var.oracle_database_goldengate_deployments except keys with no oci_url are omitted"
  value       = { for k, v in google_oracle_database_goldengate_deployment.oracle_database_goldengate_deployments : k => v.oci_url if v.oci_url != null && length(v.oci_url) > 0 }
}
output "oracle_database_goldengate_deployments_odb_network" {
  description = "Map of odb_network values across all oracle_database_goldengate_deployments, keyed the same as var.oracle_database_goldengate_deployments except keys with no odb_network are omitted"
  value       = { for k, v in google_oracle_database_goldengate_deployment.oracle_database_goldengate_deployments : k => v.odb_network if v.odb_network != null && length(v.odb_network) > 0 }
}
output "oracle_database_goldengate_deployments_odb_subnet" {
  description = "Map of odb_subnet values across all oracle_database_goldengate_deployments, keyed the same as var.oracle_database_goldengate_deployments except keys with no odb_subnet are omitted"
  value       = { for k, v in google_oracle_database_goldengate_deployment.oracle_database_goldengate_deployments : k => v.odb_subnet if v.odb_subnet != null && length(v.odb_subnet) > 0 }
}
output "oracle_database_goldengate_deployments_project" {
  description = "Map of project values across all oracle_database_goldengate_deployments, keyed the same as var.oracle_database_goldengate_deployments except keys with no project are omitted"
  value       = { for k, v in google_oracle_database_goldengate_deployment.oracle_database_goldengate_deployments : k => v.project if v.project != null && length(v.project) > 0 }
}
output "oracle_database_goldengate_deployments_properties" {
  description = "Map of properties values across all oracle_database_goldengate_deployments, keyed the same as var.oracle_database_goldengate_deployments except keys with no properties are omitted"
  value       = { for k, v in google_oracle_database_goldengate_deployment.oracle_database_goldengate_deployments : k => one(v.properties) if v.properties != null && length(v.properties) > 0 }
}
output "oracle_database_goldengate_deployments_terraform_labels" {
  description = "Map of terraform_labels values across all oracle_database_goldengate_deployments, keyed the same as var.oracle_database_goldengate_deployments except keys with no terraform_labels are omitted"
  value       = { for k, v in google_oracle_database_goldengate_deployment.oracle_database_goldengate_deployments : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}


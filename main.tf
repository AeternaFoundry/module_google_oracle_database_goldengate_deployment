resource "google_oracle_database_goldengate_deployment" "oracle_database_goldengate_deployments" {
  for_each = var.oracle_database_goldengate_deployments

  display_name             = each.value.display_name
  goldengate_deployment_id = each.value.goldengate_deployment_id
  location                 = each.value.location
  odb_subnet               = each.value.odb_subnet
  deletion_policy          = each.value.deletion_policy
  gcp_oracle_zone          = each.value.gcp_oracle_zone
  labels                   = each.value.labels
  odb_network              = each.value.odb_network
  project                  = each.value.project

  properties {
    dynamic "backup_schedule" {
      for_each = each.value.properties.backup_schedule != null ? [each.value.properties.backup_schedule] : []
      content {
      }
    }
    cpu_core_count = each.value.properties.cpu_core_count
    dynamic "deployment_diagnostic_data" {
      for_each = each.value.properties.deployment_diagnostic_data != null ? [each.value.properties.deployment_diagnostic_data] : []
      content {
      }
    }
    deployment_type         = each.value.properties.deployment_type
    description             = each.value.properties.description
    environment_type        = each.value.properties.environment_type
    is_auto_scaling_enabled = each.value.properties.is_auto_scaling_enabled
    license_model           = each.value.properties.license_model
    dynamic "maintenance_config" {
      for_each = each.value.properties.maintenance_config != null ? [each.value.properties.maintenance_config] : []
      content {
        bundle_release_upgrade_period_days      = maintenance_config.value.bundle_release_upgrade_period_days
        interim_release_upgrade_period_days     = maintenance_config.value.interim_release_upgrade_period_days
        is_interim_release_auto_upgrade_enabled = maintenance_config.value.is_interim_release_auto_upgrade_enabled
        major_release_upgrade_period_days       = maintenance_config.value.major_release_upgrade_period_days
        security_patch_upgrade_period_days      = maintenance_config.value.security_patch_upgrade_period_days
      }
    }
    dynamic "maintenance_window" {
      for_each = each.value.properties.maintenance_window != null ? [each.value.properties.maintenance_window] : []
      content {
        day        = maintenance_window.value.day
        start_hour = maintenance_window.value.start_hour
      }
    }
    ogg_data {
      admin_password                = each.value.properties.ogg_data.admin_password
      admin_password_secret_version = each.value.properties.ogg_data.admin_password_secret_version
      admin_username                = each.value.properties.ogg_data.admin_username
      deployment                    = each.value.properties.ogg_data.deployment
      dynamic "group_roles_mapping" {
        for_each = each.value.properties.ogg_data.group_roles_mapping != null ? [each.value.properties.ogg_data.group_roles_mapping] : []
        content {
        }
      }
      ogg_version = each.value.properties.ogg_data.ogg_version
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}


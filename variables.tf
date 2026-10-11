variable "oracle_database_goldengate_deployments" {
  description = <<EOT
Map of oracle_database_goldengate_deployments, attributes below
Required:
    - display_name
    - goldengate_deployment_id
    - location
    - odb_subnet
    - properties (block):
        - backup_schedule (optional, block):
        - cpu_core_count (optional)
        - deployment_diagnostic_data (optional, block):
        - deployment_type (required)
        - description (optional)
        - environment_type (optional)
        - is_auto_scaling_enabled (optional)
        - license_model (optional)
        - maintenance_config (optional, block):
            - bundle_release_upgrade_period_days (optional)
            - interim_release_upgrade_period_days (optional)
            - is_interim_release_auto_upgrade_enabled (optional)
            - major_release_upgrade_period_days (optional)
            - security_patch_upgrade_period_days (optional)
        - maintenance_window (optional, block):
            - day (required)
            - start_hour (required)
        - ogg_data (required, block):
            - admin_password (optional)
            - admin_password_secret_version (optional)
            - admin_username (required)
            - deployment (required)
            - group_roles_mapping (optional, block):
            - ogg_version (optional)
Optional:
    - deletion_policy
    - gcp_oracle_zone
    - labels
    - odb_network
    - project
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    display_name             = string
    goldengate_deployment_id = string
    location                 = string
    odb_subnet               = string
    deletion_policy          = optional(string)
    gcp_oracle_zone          = optional(string)
    labels                   = optional(map(string))
    odb_network              = optional(string)
    project                  = optional(string)
    properties = object({
      backup_schedule = optional(object({
      }))
      cpu_core_count = optional(number)
      deployment_diagnostic_data = optional(object({
      }))
      deployment_type         = string
      description             = optional(string)
      environment_type        = optional(string)
      is_auto_scaling_enabled = optional(bool)
      license_model           = optional(string)
      maintenance_config = optional(object({
        bundle_release_upgrade_period_days      = optional(number)
        interim_release_upgrade_period_days     = optional(number)
        is_interim_release_auto_upgrade_enabled = optional(bool)
        major_release_upgrade_period_days       = optional(number)
        security_patch_upgrade_period_days      = optional(number)
      }))
      maintenance_window = optional(object({
        day        = string
        start_hour = number
      }))
      ogg_data = object({
        admin_password                = optional(string)
        admin_password_secret_version = optional(string)
        admin_username                = string
        deployment                    = string
        group_roles_mapping = optional(object({
        }))
        ogg_version = optional(string)
      })
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}


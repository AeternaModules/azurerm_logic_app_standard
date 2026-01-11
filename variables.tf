variable "logic_app_standards" {
  description = <<EOT
Map of logic_app_standards, attributes below
Required:
    - app_service_plan_id
    - location
    - name
    - resource_group_name
    - storage_account_access_key
    - storage_account_name
Optional:
    - app_settings
    - bundle_version
    - client_affinity_enabled
    - client_certificate_mode
    - enabled
    - ftp_publish_basic_authentication_enabled
    - https_only
    - public_network_access
    - scm_publish_basic_authentication_enabled
    - storage_account_share_name
    - tags
    - use_extension_bundle
    - version
    - virtual_network_subnet_id
    - vnet_content_share_enabled
    - connection_string (block):
        - name (required)
        - type (required)
        - value (required)
    - identity (block):
        - identity_ids (optional)
        - type (required)
    - site_config (block):
        - always_on (optional)
        - app_scale_limit (optional)
        - cors (optional, block):
            - allowed_origins (optional)
            - support_credentials (optional)
        - dotnet_framework_version (optional)
        - elastic_instance_minimum (optional)
        - ftps_state (optional)
        - health_check_path (optional)
        - http2_enabled (optional)
        - ip_restriction (optional, block):
            - action (optional)
            - description (optional)
            - headers (optional, block):
                - x_azure_fdid (optional)
                - x_fd_health_probe (optional)
                - x_forwarded_for (optional)
                - x_forwarded_host (optional)
            - ip_address (optional)
            - name (optional)
            - priority (optional)
            - service_tag (optional)
            - virtual_network_subnet_id (optional)
        - linux_fx_version (optional)
        - min_tls_version (optional)
        - pre_warmed_instance_count (optional)
        - public_network_access_enabled (optional)
        - runtime_scale_monitoring_enabled (optional)
        - scm_ip_restriction (optional, block):
            - action (optional)
            - description (optional)
            - headers (optional, block):
                - x_azure_fdid (optional)
                - x_fd_health_probe (optional)
                - x_forwarded_for (optional)
                - x_forwarded_host (optional)
            - ip_address (optional)
            - name (optional)
            - priority (optional)
            - service_tag (optional)
            - virtual_network_subnet_id (optional)
        - scm_min_tls_version (optional)
        - scm_type (optional)
        - scm_use_main_ip_restriction (optional)
        - use_32_bit_worker_process (optional)
        - vnet_route_all_enabled (optional)
        - websockets_enabled (optional)
EOT

  type = map(object({
    app_service_plan_id                      = string
    location                                 = string
    name                                     = string
    resource_group_name                      = string
    storage_account_access_key               = string
    storage_account_name                     = string
    version                                  = optional(string, "~4")
    use_extension_bundle                     = optional(bool, true)
    tags                                     = optional(map(string))
    storage_account_share_name               = optional(string)
    scm_publish_basic_authentication_enabled = optional(bool, true)
    public_network_access                    = optional(string)
    enabled                                  = optional(bool, true)
    ftp_publish_basic_authentication_enabled = optional(bool, true)
    virtual_network_subnet_id                = optional(string)
    client_certificate_mode                  = optional(string)
    client_affinity_enabled                  = optional(bool)
    bundle_version                           = optional(string, "[1.*, 2.0.0)")
    app_settings                             = optional(map(string))
    https_only                               = optional(bool, false)
    vnet_content_share_enabled               = optional(bool)
    connection_string = optional(object({
      name  = string
      type  = string
      value = string
    }))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    site_config = optional(object({
      always_on       = optional(bool, false)
      app_scale_limit = optional(number)
      cors = optional(object({
        allowed_origins     = optional(set(string))
        support_credentials = optional(bool, false)
      }))
      dotnet_framework_version = optional(string, "v4.0")
      elastic_instance_minimum = optional(number)
      ftps_state               = optional(string)
      health_check_path        = optional(string)
      http2_enabled            = optional(bool, false)
      ip_restriction = optional(object({
        action      = optional(string, "Allow")
        description = optional(string)
        headers = optional(object({
          x_azure_fdid      = optional(list(string))
          x_fd_health_probe = optional(list(string))
          x_forwarded_for   = optional(list(string))
          x_forwarded_host  = optional(list(string))
        }))
        ip_address                = optional(string)
        name                      = optional(string)
        priority                  = optional(number, 65000)
        service_tag               = optional(string)
        virtual_network_subnet_id = optional(string)
      }))
      linux_fx_version                 = optional(string)
      min_tls_version                  = optional(string)
      pre_warmed_instance_count        = optional(number)
      public_network_access_enabled    = optional(bool)
      runtime_scale_monitoring_enabled = optional(bool, false)
      scm_ip_restriction = optional(object({
        action      = optional(string, "Allow")
        description = optional(string)
        headers = optional(object({
          x_azure_fdid      = optional(list(string))
          x_fd_health_probe = optional(list(string))
          x_forwarded_for   = optional(list(string))
          x_forwarded_host  = optional(list(string))
        }))
        ip_address                = optional(string)
        name                      = optional(string)
        priority                  = optional(number, 65000)
        service_tag               = optional(string)
        virtual_network_subnet_id = optional(string)
      }))
      scm_min_tls_version         = optional(string)
      scm_type                    = optional(string)
      scm_use_main_ip_restriction = optional(bool, false)
      use_32_bit_worker_process   = optional(bool, true)
      vnet_route_all_enabled      = optional(bool)
      websockets_enabled          = optional(bool, false)
    }))
  }))
}


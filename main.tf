resource "azurerm_logic_app_standard" "logic_app_standards" {
  for_each = var.logic_app_standards

  app_service_plan_id                      = each.value.app_service_plan_id
  location                                 = each.value.location
  name                                     = each.value.name
  resource_group_name                      = each.value.resource_group_name
  storage_account_access_key               = each.value.storage_account_access_key
  storage_account_name                     = each.value.storage_account_name
  version                                  = each.value.version
  use_extension_bundle                     = each.value.use_extension_bundle
  tags                                     = each.value.tags
  storage_account_share_name               = each.value.storage_account_share_name
  scm_publish_basic_authentication_enabled = each.value.scm_publish_basic_authentication_enabled
  public_network_access                    = each.value.public_network_access
  enabled                                  = each.value.enabled
  ftp_publish_basic_authentication_enabled = each.value.ftp_publish_basic_authentication_enabled
  virtual_network_subnet_id                = each.value.virtual_network_subnet_id
  client_certificate_mode                  = each.value.client_certificate_mode
  client_affinity_enabled                  = each.value.client_affinity_enabled
  bundle_version                           = each.value.bundle_version
  app_settings                             = each.value.app_settings
  https_only                               = each.value.https_only
  vnet_content_share_enabled               = each.value.vnet_content_share_enabled

  dynamic "connection_string" {
    for_each = each.value.connection_string != null ? [each.value.connection_string] : []
    content {
      name  = connection_string.value.name
      type  = connection_string.value.type
      value = connection_string.value.value
    }
  }

  dynamic "identity" {
    for_each = each.value.identity != null ? [each.value.identity] : []
    content {
      identity_ids = identity.value.identity_ids
      type         = identity.value.type
    }
  }

  dynamic "site_config" {
    for_each = each.value.site_config != null ? [each.value.site_config] : []
    content {
      always_on       = site_config.value.always_on
      app_scale_limit = site_config.value.app_scale_limit
      dynamic "cors" {
        for_each = site_config.value.cors != null ? [site_config.value.cors] : []
        content {
          allowed_origins     = cors.value.allowed_origins
          support_credentials = cors.value.support_credentials
        }
      }
      dotnet_framework_version = site_config.value.dotnet_framework_version
      elastic_instance_minimum = site_config.value.elastic_instance_minimum
      ftps_state               = site_config.value.ftps_state
      health_check_path        = site_config.value.health_check_path
      http2_enabled            = site_config.value.http2_enabled
      dynamic "ip_restriction" {
        for_each = site_config.value.ip_restriction != null ? [site_config.value.ip_restriction] : []
        content {
          action      = ip_restriction.value.action
          description = ip_restriction.value.description
          dynamic "headers" {
            for_each = ip_restriction.value.headers != null ? [ip_restriction.value.headers] : []
            content {
              x_azure_fdid      = headers.value.x_azure_fdid
              x_fd_health_probe = headers.value.x_fd_health_probe
              x_forwarded_for   = headers.value.x_forwarded_for
              x_forwarded_host  = headers.value.x_forwarded_host
            }
          }
          ip_address                = ip_restriction.value.ip_address
          name                      = ip_restriction.value.name
          priority                  = ip_restriction.value.priority
          service_tag               = ip_restriction.value.service_tag
          virtual_network_subnet_id = ip_restriction.value.virtual_network_subnet_id
        }
      }
      linux_fx_version                 = site_config.value.linux_fx_version
      min_tls_version                  = site_config.value.min_tls_version
      pre_warmed_instance_count        = site_config.value.pre_warmed_instance_count
      public_network_access_enabled    = site_config.value.public_network_access_enabled
      runtime_scale_monitoring_enabled = site_config.value.runtime_scale_monitoring_enabled
      dynamic "scm_ip_restriction" {
        for_each = site_config.value.scm_ip_restriction != null ? [site_config.value.scm_ip_restriction] : []
        content {
          action      = scm_ip_restriction.value.action
          description = scm_ip_restriction.value.description
          dynamic "headers" {
            for_each = scm_ip_restriction.value.headers != null ? [scm_ip_restriction.value.headers] : []
            content {
              x_azure_fdid      = headers.value.x_azure_fdid
              x_fd_health_probe = headers.value.x_fd_health_probe
              x_forwarded_for   = headers.value.x_forwarded_for
              x_forwarded_host  = headers.value.x_forwarded_host
            }
          }
          ip_address                = scm_ip_restriction.value.ip_address
          name                      = scm_ip_restriction.value.name
          priority                  = scm_ip_restriction.value.priority
          service_tag               = scm_ip_restriction.value.service_tag
          virtual_network_subnet_id = scm_ip_restriction.value.virtual_network_subnet_id
        }
      }
      scm_min_tls_version         = site_config.value.scm_min_tls_version
      scm_type                    = site_config.value.scm_type
      scm_use_main_ip_restriction = site_config.value.scm_use_main_ip_restriction
      use_32_bit_worker_process   = site_config.value.use_32_bit_worker_process
      vnet_route_all_enabled      = site_config.value.vnet_route_all_enabled
      websockets_enabled          = site_config.value.websockets_enabled
    }
  }
}


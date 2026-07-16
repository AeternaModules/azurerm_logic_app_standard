output "logic_app_standards_id" {
  description = "Map of id values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.id if v.id != null && length(v.id) > 0 }
}
output "logic_app_standards_app_service_plan_id" {
  description = "Map of app_service_plan_id values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.app_service_plan_id if v.app_service_plan_id != null && length(v.app_service_plan_id) > 0 }
}
output "logic_app_standards_app_settings" {
  description = "Map of app_settings values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.app_settings if v.app_settings != null && length(v.app_settings) > 0 }
}
output "logic_app_standards_bundle_version" {
  description = "Map of bundle_version values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.bundle_version if v.bundle_version != null && length(v.bundle_version) > 0 }
}
output "logic_app_standards_client_affinity_enabled" {
  description = "Map of client_affinity_enabled values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.client_affinity_enabled if v.client_affinity_enabled != null }
}
output "logic_app_standards_client_certificate_mode" {
  description = "Map of client_certificate_mode values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.client_certificate_mode if v.client_certificate_mode != null && length(v.client_certificate_mode) > 0 }
}
output "logic_app_standards_connection_string" {
  description = "Map of connection_string values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.connection_string if v.connection_string != null && length(v.connection_string) > 0 }
  sensitive   = true
}
output "logic_app_standards_custom_domain_verification_id" {
  description = "Map of custom_domain_verification_id values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.custom_domain_verification_id if v.custom_domain_verification_id != null && length(v.custom_domain_verification_id) > 0 }
}
output "logic_app_standards_default_hostname" {
  description = "Map of default_hostname values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.default_hostname if v.default_hostname != null && length(v.default_hostname) > 0 }
}
output "logic_app_standards_enabled" {
  description = "Map of enabled values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.enabled if v.enabled != null }
}
output "logic_app_standards_ftp_publish_basic_authentication_enabled" {
  description = "Map of ftp_publish_basic_authentication_enabled values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.ftp_publish_basic_authentication_enabled if v.ftp_publish_basic_authentication_enabled != null }
}
output "logic_app_standards_https_only" {
  description = "Map of https_only values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.https_only if v.https_only != null }
}
output "logic_app_standards_identity" {
  description = "Map of identity values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.identity if v.identity != null && length(v.identity) > 0 }
}
output "logic_app_standards_key_vault_reference_identity_id" {
  description = "Map of key_vault_reference_identity_id values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.key_vault_reference_identity_id if v.key_vault_reference_identity_id != null && length(v.key_vault_reference_identity_id) > 0 }
}
output "logic_app_standards_kind" {
  description = "Map of kind values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.kind if v.kind != null && length(v.kind) > 0 }
}
output "logic_app_standards_location" {
  description = "Map of location values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.location if v.location != null && length(v.location) > 0 }
}
output "logic_app_standards_name" {
  description = "Map of name values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.name if v.name != null && length(v.name) > 0 }
}
output "logic_app_standards_outbound_ip_addresses" {
  description = "Map of outbound_ip_addresses values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.outbound_ip_addresses if v.outbound_ip_addresses != null && length(v.outbound_ip_addresses) > 0 }
}
output "logic_app_standards_possible_outbound_ip_addresses" {
  description = "Map of possible_outbound_ip_addresses values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.possible_outbound_ip_addresses if v.possible_outbound_ip_addresses != null && length(v.possible_outbound_ip_addresses) > 0 }
}
output "logic_app_standards_public_network_access" {
  description = "Map of public_network_access values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.public_network_access if v.public_network_access != null && length(v.public_network_access) > 0 }
}
output "logic_app_standards_resource_group_name" {
  description = "Map of resource_group_name values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "logic_app_standards_scm_publish_basic_authentication_enabled" {
  description = "Map of scm_publish_basic_authentication_enabled values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.scm_publish_basic_authentication_enabled if v.scm_publish_basic_authentication_enabled != null }
}
output "logic_app_standards_site_config" {
  description = "Map of site_config values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.site_config if v.site_config != null && length(v.site_config) > 0 }
}
output "logic_app_standards_site_credential" {
  description = "Map of site_credential values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.site_credential if v.site_credential != null && length(v.site_credential) > 0 }
}
output "logic_app_standards_storage_account_access_key" {
  description = "Map of storage_account_access_key values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.storage_account_access_key if v.storage_account_access_key != null && length(v.storage_account_access_key) > 0 }
  sensitive   = true
}
output "logic_app_standards_storage_account_name" {
  description = "Map of storage_account_name values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.storage_account_name if v.storage_account_name != null && length(v.storage_account_name) > 0 }
}
output "logic_app_standards_storage_account_share_name" {
  description = "Map of storage_account_share_name values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.storage_account_share_name if v.storage_account_share_name != null && length(v.storage_account_share_name) > 0 }
}
output "logic_app_standards_tags" {
  description = "Map of tags values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "logic_app_standards_use_extension_bundle" {
  description = "Map of use_extension_bundle values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.use_extension_bundle if v.use_extension_bundle != null }
}
output "logic_app_standards_version" {
  description = "Map of version values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.version if v.version != null && length(v.version) > 0 }
}
output "logic_app_standards_virtual_network_subnet_id" {
  description = "Map of virtual_network_subnet_id values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.virtual_network_subnet_id if v.virtual_network_subnet_id != null && length(v.virtual_network_subnet_id) > 0 }
}
output "logic_app_standards_vnet_content_share_enabled" {
  description = "Map of vnet_content_share_enabled values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.vnet_content_share_enabled if v.vnet_content_share_enabled != null }
}


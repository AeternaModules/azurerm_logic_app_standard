output "logic_app_standards_app_service_plan_id" {
  description = "Map of app_service_plan_id values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.app_service_plan_id }
}
output "logic_app_standards_app_settings" {
  description = "Map of app_settings values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.app_settings }
}
output "logic_app_standards_bundle_version" {
  description = "Map of bundle_version values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.bundle_version }
}
output "logic_app_standards_client_affinity_enabled" {
  description = "Map of client_affinity_enabled values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.client_affinity_enabled }
}
output "logic_app_standards_client_certificate_mode" {
  description = "Map of client_certificate_mode values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.client_certificate_mode }
}
output "logic_app_standards_connection_string" {
  description = "Map of connection_string values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.connection_string }
  sensitive   = true
}
output "logic_app_standards_custom_domain_verification_id" {
  description = "Map of custom_domain_verification_id values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.custom_domain_verification_id }
}
output "logic_app_standards_default_hostname" {
  description = "Map of default_hostname values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.default_hostname }
}
output "logic_app_standards_enabled" {
  description = "Map of enabled values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.enabled }
}
output "logic_app_standards_ftp_publish_basic_authentication_enabled" {
  description = "Map of ftp_publish_basic_authentication_enabled values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.ftp_publish_basic_authentication_enabled }
}
output "logic_app_standards_https_only" {
  description = "Map of https_only values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.https_only }
}
output "logic_app_standards_identity" {
  description = "Map of identity values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.identity }
}
output "logic_app_standards_key_vault_reference_identity_id" {
  description = "Map of key_vault_reference_identity_id values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.key_vault_reference_identity_id }
}
output "logic_app_standards_kind" {
  description = "Map of kind values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.kind }
}
output "logic_app_standards_location" {
  description = "Map of location values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.location }
}
output "logic_app_standards_name" {
  description = "Map of name values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.name }
}
output "logic_app_standards_outbound_ip_addresses" {
  description = "Map of outbound_ip_addresses values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.outbound_ip_addresses }
}
output "logic_app_standards_possible_outbound_ip_addresses" {
  description = "Map of possible_outbound_ip_addresses values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.possible_outbound_ip_addresses }
}
output "logic_app_standards_public_network_access" {
  description = "Map of public_network_access values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.public_network_access }
}
output "logic_app_standards_resource_group_name" {
  description = "Map of resource_group_name values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.resource_group_name }
}
output "logic_app_standards_scm_publish_basic_authentication_enabled" {
  description = "Map of scm_publish_basic_authentication_enabled values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.scm_publish_basic_authentication_enabled }
}
output "logic_app_standards_site_config" {
  description = "Map of site_config values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.site_config }
}
output "logic_app_standards_site_credential" {
  description = "Map of site_credential values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.site_credential }
}
output "logic_app_standards_storage_account_access_key" {
  description = "Map of storage_account_access_key values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.storage_account_access_key }
  sensitive   = true
}
output "logic_app_standards_storage_account_name" {
  description = "Map of storage_account_name values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.storage_account_name }
}
output "logic_app_standards_storage_account_share_name" {
  description = "Map of storage_account_share_name values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.storage_account_share_name }
}
output "logic_app_standards_tags" {
  description = "Map of tags values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.tags }
}
output "logic_app_standards_use_extension_bundle" {
  description = "Map of use_extension_bundle values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.use_extension_bundle }
}
output "logic_app_standards_version" {
  description = "Map of version values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.version }
}
output "logic_app_standards_virtual_network_subnet_id" {
  description = "Map of virtual_network_subnet_id values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.virtual_network_subnet_id }
}
output "logic_app_standards_vnet_content_share_enabled" {
  description = "Map of vnet_content_share_enabled values across all logic_app_standards, keyed the same as var.logic_app_standards"
  value       = { for k, v in azurerm_logic_app_standard.logic_app_standards : k => v.vnet_content_share_enabled }
}


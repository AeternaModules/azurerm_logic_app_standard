output "logic_app_standards" {
  description = "All logic_app_standard resources"
  value       = azurerm_logic_app_standard.logic_app_standards
  sensitive   = true
}
output "logic_app_standards_app_service_plan_id" {
  description = "List of app_service_plan_id values across all logic_app_standards"
  value       = [for k, v in azurerm_logic_app_standard.logic_app_standards : v.app_service_plan_id]
}
output "logic_app_standards_app_settings" {
  description = "List of app_settings values across all logic_app_standards"
  value       = [for k, v in azurerm_logic_app_standard.logic_app_standards : v.app_settings]
}
output "logic_app_standards_bundle_version" {
  description = "List of bundle_version values across all logic_app_standards"
  value       = [for k, v in azurerm_logic_app_standard.logic_app_standards : v.bundle_version]
}
output "logic_app_standards_client_affinity_enabled" {
  description = "List of client_affinity_enabled values across all logic_app_standards"
  value       = [for k, v in azurerm_logic_app_standard.logic_app_standards : v.client_affinity_enabled]
}
output "logic_app_standards_client_certificate_mode" {
  description = "List of client_certificate_mode values across all logic_app_standards"
  value       = [for k, v in azurerm_logic_app_standard.logic_app_standards : v.client_certificate_mode]
}
output "logic_app_standards_connection_string" {
  description = "List of connection_string values across all logic_app_standards"
  value       = [for k, v in azurerm_logic_app_standard.logic_app_standards : v.connection_string]
  sensitive   = true
}
output "logic_app_standards_custom_domain_verification_id" {
  description = "List of custom_domain_verification_id values across all logic_app_standards"
  value       = [for k, v in azurerm_logic_app_standard.logic_app_standards : v.custom_domain_verification_id]
}
output "logic_app_standards_default_hostname" {
  description = "List of default_hostname values across all logic_app_standards"
  value       = [for k, v in azurerm_logic_app_standard.logic_app_standards : v.default_hostname]
}
output "logic_app_standards_enabled" {
  description = "List of enabled values across all logic_app_standards"
  value       = [for k, v in azurerm_logic_app_standard.logic_app_standards : v.enabled]
}
output "logic_app_standards_ftp_publish_basic_authentication_enabled" {
  description = "List of ftp_publish_basic_authentication_enabled values across all logic_app_standards"
  value       = [for k, v in azurerm_logic_app_standard.logic_app_standards : v.ftp_publish_basic_authentication_enabled]
}
output "logic_app_standards_https_only" {
  description = "List of https_only values across all logic_app_standards"
  value       = [for k, v in azurerm_logic_app_standard.logic_app_standards : v.https_only]
}
output "logic_app_standards_identity" {
  description = "List of identity values across all logic_app_standards"
  value       = [for k, v in azurerm_logic_app_standard.logic_app_standards : v.identity]
}
output "logic_app_standards_key_vault_reference_identity_id" {
  description = "List of key_vault_reference_identity_id values across all logic_app_standards"
  value       = [for k, v in azurerm_logic_app_standard.logic_app_standards : v.key_vault_reference_identity_id]
}
output "logic_app_standards_kind" {
  description = "List of kind values across all logic_app_standards"
  value       = [for k, v in azurerm_logic_app_standard.logic_app_standards : v.kind]
}
output "logic_app_standards_location" {
  description = "List of location values across all logic_app_standards"
  value       = [for k, v in azurerm_logic_app_standard.logic_app_standards : v.location]
}
output "logic_app_standards_name" {
  description = "List of name values across all logic_app_standards"
  value       = [for k, v in azurerm_logic_app_standard.logic_app_standards : v.name]
}
output "logic_app_standards_outbound_ip_addresses" {
  description = "List of outbound_ip_addresses values across all logic_app_standards"
  value       = [for k, v in azurerm_logic_app_standard.logic_app_standards : v.outbound_ip_addresses]
}
output "logic_app_standards_possible_outbound_ip_addresses" {
  description = "List of possible_outbound_ip_addresses values across all logic_app_standards"
  value       = [for k, v in azurerm_logic_app_standard.logic_app_standards : v.possible_outbound_ip_addresses]
}
output "logic_app_standards_public_network_access" {
  description = "List of public_network_access values across all logic_app_standards"
  value       = [for k, v in azurerm_logic_app_standard.logic_app_standards : v.public_network_access]
}
output "logic_app_standards_resource_group_name" {
  description = "List of resource_group_name values across all logic_app_standards"
  value       = [for k, v in azurerm_logic_app_standard.logic_app_standards : v.resource_group_name]
}
output "logic_app_standards_scm_publish_basic_authentication_enabled" {
  description = "List of scm_publish_basic_authentication_enabled values across all logic_app_standards"
  value       = [for k, v in azurerm_logic_app_standard.logic_app_standards : v.scm_publish_basic_authentication_enabled]
}
output "logic_app_standards_site_config" {
  description = "List of site_config values across all logic_app_standards"
  value       = [for k, v in azurerm_logic_app_standard.logic_app_standards : v.site_config]
}
output "logic_app_standards_site_credential" {
  description = "List of site_credential values across all logic_app_standards"
  value       = [for k, v in azurerm_logic_app_standard.logic_app_standards : v.site_credential]
}
output "logic_app_standards_storage_account_access_key" {
  description = "List of storage_account_access_key values across all logic_app_standards"
  value       = [for k, v in azurerm_logic_app_standard.logic_app_standards : v.storage_account_access_key]
  sensitive   = true
}
output "logic_app_standards_storage_account_name" {
  description = "List of storage_account_name values across all logic_app_standards"
  value       = [for k, v in azurerm_logic_app_standard.logic_app_standards : v.storage_account_name]
}
output "logic_app_standards_storage_account_share_name" {
  description = "List of storage_account_share_name values across all logic_app_standards"
  value       = [for k, v in azurerm_logic_app_standard.logic_app_standards : v.storage_account_share_name]
}
output "logic_app_standards_tags" {
  description = "List of tags values across all logic_app_standards"
  value       = [for k, v in azurerm_logic_app_standard.logic_app_standards : v.tags]
}
output "logic_app_standards_use_extension_bundle" {
  description = "List of use_extension_bundle values across all logic_app_standards"
  value       = [for k, v in azurerm_logic_app_standard.logic_app_standards : v.use_extension_bundle]
}
output "logic_app_standards_version" {
  description = "List of version values across all logic_app_standards"
  value       = [for k, v in azurerm_logic_app_standard.logic_app_standards : v.version]
}
output "logic_app_standards_virtual_network_subnet_id" {
  description = "List of virtual_network_subnet_id values across all logic_app_standards"
  value       = [for k, v in azurerm_logic_app_standard.logic_app_standards : v.virtual_network_subnet_id]
}
output "logic_app_standards_vnet_content_share_enabled" {
  description = "List of vnet_content_share_enabled values across all logic_app_standards"
  value       = [for k, v in azurerm_logic_app_standard.logic_app_standards : v.vnet_content_share_enabled]
}


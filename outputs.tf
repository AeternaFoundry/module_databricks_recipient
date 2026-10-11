output "recipients_id" {
  description = "Map of id values across all recipients, keyed the same as var.recipients except keys with no id are omitted"
  value       = { for k, v in databricks_recipient.recipients : k => v.id if v.id != null && length(v.id) > 0 }
}
output "recipients_activated" {
  description = "Map of activated values across all recipients, keyed the same as var.recipients except keys with no activated are omitted"
  value       = { for k, v in databricks_recipient.recipients : k => v.activated if v.activated != null }
}
output "recipients_activation_url" {
  description = "Map of activation_url values across all recipients, keyed the same as var.recipients except keys with no activation_url are omitted"
  value       = { for k, v in databricks_recipient.recipients : k => v.activation_url if v.activation_url != null && length(v.activation_url) > 0 }
}
output "recipients_authentication_type" {
  description = "Map of authentication_type values across all recipients, keyed the same as var.recipients except keys with no authentication_type are omitted"
  value       = { for k, v in databricks_recipient.recipients : k => v.authentication_type if v.authentication_type != null && length(v.authentication_type) > 0 }
}
output "recipients_cloud" {
  description = "Map of cloud values across all recipients, keyed the same as var.recipients except keys with no cloud are omitted"
  value       = { for k, v in databricks_recipient.recipients : k => v.cloud if v.cloud != null && length(v.cloud) > 0 }
}
output "recipients_comment" {
  description = "Map of comment values across all recipients, keyed the same as var.recipients except keys with no comment are omitted"
  value       = { for k, v in databricks_recipient.recipients : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "recipients_created_at" {
  description = "Map of created_at values across all recipients, keyed the same as var.recipients except keys with no created_at are omitted"
  value       = { for k, v in databricks_recipient.recipients : k => v.created_at if v.created_at != null }
}
output "recipients_created_by" {
  description = "Map of created_by values across all recipients, keyed the same as var.recipients except keys with no created_by are omitted"
  value       = { for k, v in databricks_recipient.recipients : k => v.created_by if v.created_by != null && length(v.created_by) > 0 }
}
output "recipients_data_recipient_global_metastore_id" {
  description = "Map of data_recipient_global_metastore_id values across all recipients, keyed the same as var.recipients except keys with no data_recipient_global_metastore_id are omitted"
  value       = { for k, v in databricks_recipient.recipients : k => v.data_recipient_global_metastore_id if v.data_recipient_global_metastore_id != null && length(v.data_recipient_global_metastore_id) > 0 }
}
output "recipients_expiration_time" {
  description = "Map of expiration_time values across all recipients, keyed the same as var.recipients except keys with no expiration_time are omitted"
  value       = { for k, v in databricks_recipient.recipients : k => v.expiration_time if v.expiration_time != null }
}
output "recipients_ip_access_list" {
  description = "Map of ip_access_list values across all recipients, keyed the same as var.recipients except keys with no ip_access_list are omitted"
  value       = { for k, v in databricks_recipient.recipients : k => one(v.ip_access_list) if v.ip_access_list != null && length(v.ip_access_list) > 0 }
}
output "recipients_metastore_id" {
  description = "Map of metastore_id values across all recipients, keyed the same as var.recipients except keys with no metastore_id are omitted"
  value       = { for k, v in databricks_recipient.recipients : k => v.metastore_id if v.metastore_id != null && length(v.metastore_id) > 0 }
}
output "recipients_name" {
  description = "Map of name values across all recipients, keyed the same as var.recipients except keys with no name are omitted"
  value       = { for k, v in databricks_recipient.recipients : k => v.name if v.name != null && length(v.name) > 0 }
}
output "recipients_owner" {
  description = "Map of owner values across all recipients, keyed the same as var.recipients except keys with no owner are omitted"
  value       = { for k, v in databricks_recipient.recipients : k => v.owner if v.owner != null && length(v.owner) > 0 }
}
output "recipients_properties_kvpairs" {
  description = "Map of properties_kvpairs values across all recipients, keyed the same as var.recipients except keys with no properties_kvpairs are omitted"
  value       = { for k, v in databricks_recipient.recipients : k => one(v.properties_kvpairs) if v.properties_kvpairs != null && length(v.properties_kvpairs) > 0 }
}
output "recipients_provider_config" {
  description = "Map of provider_config values across all recipients, keyed the same as var.recipients except keys with no provider_config are omitted"
  value       = { for k, v in databricks_recipient.recipients : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "recipients_region" {
  description = "Map of region values across all recipients, keyed the same as var.recipients except keys with no region are omitted"
  value       = { for k, v in databricks_recipient.recipients : k => v.region if v.region != null && length(v.region) > 0 }
}
output "recipients_sharing_code" {
  description = "Map of sharing_code values across all recipients, keyed the same as var.recipients except keys with no sharing_code are omitted"
  value       = { for k, v in databricks_recipient.recipients : k => v.sharing_code if v.sharing_code != null && length(v.sharing_code) > 0 }
  sensitive   = true
}
output "recipients_tokens" {
  description = "Map of tokens values across all recipients, keyed the same as var.recipients except keys with no tokens are omitted"
  value       = { for k, v in databricks_recipient.recipients : k => v.tokens if v.tokens != null && length(v.tokens) > 0 }
}
output "recipients_updated_at" {
  description = "Map of updated_at values across all recipients, keyed the same as var.recipients except keys with no updated_at are omitted"
  value       = { for k, v in databricks_recipient.recipients : k => v.updated_at if v.updated_at != null }
}
output "recipients_updated_by" {
  description = "Map of updated_by values across all recipients, keyed the same as var.recipients except keys with no updated_by are omitted"
  value       = { for k, v in databricks_recipient.recipients : k => v.updated_by if v.updated_by != null && length(v.updated_by) > 0 }
}


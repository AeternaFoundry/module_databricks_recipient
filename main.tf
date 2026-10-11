resource "databricks_recipient" "recipients" {
  for_each = var.recipients

  authentication_type                = each.value.authentication_type
  name                               = each.value.name
  comment                            = each.value.comment
  data_recipient_global_metastore_id = each.value.data_recipient_global_metastore_id
  expiration_time                    = each.value.expiration_time
  owner                              = each.value.owner
  sharing_code                       = each.value.sharing_code

  dynamic "ip_access_list" {
    for_each = each.value.ip_access_list != null ? [each.value.ip_access_list] : []
    content {
      allowed_ip_addresses = ip_access_list.value.allowed_ip_addresses
    }
  }

  dynamic "properties_kvpairs" {
    for_each = each.value.properties_kvpairs != null ? [each.value.properties_kvpairs] : []
    content {
      properties = properties_kvpairs.value.properties
    }
  }

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }

  dynamic "tokens" {
    for_each = each.value.tokens != null ? each.value.tokens : []
    content {
    }
  }
}


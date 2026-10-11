variable "recipients" {
  description = <<EOT
Map of recipients, attributes below
Required:
    - authentication_type
    - name
Optional:
    - comment
    - data_recipient_global_metastore_id
    - expiration_time
    - owner
    - sharing_code
    - ip_access_list (block):
        - allowed_ip_addresses (optional)
    - properties_kvpairs (block):
        - properties (required)
    - provider_config (block):
        - workspace_id (optional)
    - tokens (block):
EOT

  type = map(object({
    authentication_type                = string
    name                               = string
    comment                            = optional(string)
    data_recipient_global_metastore_id = optional(string)
    expiration_time                    = optional(number)
    owner                              = optional(string)
    sharing_code                       = optional(string)
    ip_access_list = optional(object({
      allowed_ip_addresses = optional(list(string))
    }))
    properties_kvpairs = optional(object({
      properties = map(string)
    }))
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
    tokens = optional(list(object({
    })))
  }))
}


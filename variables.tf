variable "tag_associations" {
  description = <<EOT
Map of tag_associations, attributes below
Required:
    - object_identifiers
    - object_type
    - tag_id
    - tag_value
Optional:
    - skip_validation
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    object_identifiers = set(string)
    object_type        = string
    tag_id             = string
    tag_value          = string
    skip_validation    = optional(bool)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
}


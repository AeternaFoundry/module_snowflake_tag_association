output "tag_associations_id" {
  description = "Map of id values across all tag_associations, keyed the same as var.tag_associations except keys with no id are omitted"
  value       = { for k, v in snowflake_tag_association.tag_associations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "tag_associations_object_identifiers" {
  description = "Map of object_identifiers values across all tag_associations, keyed the same as var.tag_associations except keys with no object_identifiers are omitted"
  value       = { for k, v in snowflake_tag_association.tag_associations : k => v.object_identifiers if v.object_identifiers != null && length(v.object_identifiers) > 0 }
}
output "tag_associations_object_type" {
  description = "Map of object_type values across all tag_associations, keyed the same as var.tag_associations except keys with no object_type are omitted"
  value       = { for k, v in snowflake_tag_association.tag_associations : k => v.object_type if v.object_type != null && length(v.object_type) > 0 }
}
output "tag_associations_skip_validation" {
  description = "Map of skip_validation values across all tag_associations, keyed the same as var.tag_associations except keys with no skip_validation are omitted"
  value       = { for k, v in snowflake_tag_association.tag_associations : k => v.skip_validation if v.skip_validation != null }
}
output "tag_associations_tag_id" {
  description = "Map of tag_id values across all tag_associations, keyed the same as var.tag_associations except keys with no tag_id are omitted"
  value       = { for k, v in snowflake_tag_association.tag_associations : k => v.tag_id if v.tag_id != null && length(v.tag_id) > 0 }
}
output "tag_associations_tag_value" {
  description = "Map of tag_value values across all tag_associations, keyed the same as var.tag_associations except keys with no tag_value are omitted"
  value       = { for k, v in snowflake_tag_association.tag_associations : k => v.tag_value if v.tag_value != null && length(v.tag_value) > 0 }
}


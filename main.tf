resource "snowflake_tag_association" "tag_associations" {
  for_each = var.tag_associations

  object_identifiers = each.value.object_identifiers
  object_type        = each.value.object_type
  tag_id             = each.value.tag_id
  tag_value          = each.value.tag_value
  skip_validation    = each.value.skip_validation

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}


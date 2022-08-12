resource "snowflake_table" "ingest" {
  for_each = var.ingest_tables_config
  database = var.ingest_database_id
  schema   = snowflake_schema.ingest_source_schema.name
  name     = upper(each.value.name)
  comment  = "created by terraform"

  dynamic "column" {
    for_each = each.value.columns
    iterator = column
    content {
      name     = column.value.name
      type     = column.value.type
      nullable = column.value.nullable
    }
  }

  primary_key {
    name = each.value.primary_key_name
    keys = each.value.primary_keys_list
  }
}

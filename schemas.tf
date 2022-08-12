resource "snowflake_schema" "ingest_source_schema" {
  name     = upper(var.source_name)
  database = var.ingest_database_id
  comment  = var.ingest_schema_config.comment

  is_transient        = try(var.ingest_schema_config.is_transient, null)
  is_managed          = try(var.ingest_schema_config.is_managed, null)
  data_retention_days = try(var.ingest_schema_config.data_retention_days, null)
}

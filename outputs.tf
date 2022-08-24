# create an output for each resource (schema, table, file format)
# include outputs for id and name

output "source_schema_name" {
  description = "Source schema name"
  value       = snowflake_schema.ingest.name
}

output "source_schema_id" {
  description = "Source schema id"
  value       = snowflake_schema.ingest.id
}

output "source_table_names" {
  description = "source table name"
  value       = snowflake_table.ingest.name
}

output "source_table_ids" {
  description = "Source table ids"
  value       = snowflake_table.ingest.id
}

output "file_format_ids" {
  description = "File formate ids"
  value       = [for f in snowflake_file_format.ingest : f.id]
}

output "file_format_names" {
  description = "File formate names"
  value       = [for f in snowflake_file_format.ingest : f.name]
}

// create an output for each resource (schema, table, file format)
// include outputs for id and name

output "source_schema_name" {
  value = snowflake_schema.ingest_source_schema.name
}

output "source_schema_id" {
  value = snowflake_schema.ingest_source_schema.id
}

output "source_table_names" {
  value = [for t in snowflake_table.ingest : t.name]
}

output "source_table_ids" {
  value = [for t in snowflake_table.ingest : t.id]
}

output "file_format_ids" {
  value = [for f in snowflake_file_format.ingest : f.id]
}

output "file_format_names" {
  value = [for f in snowflake_file_format.ingest : f.name]
}

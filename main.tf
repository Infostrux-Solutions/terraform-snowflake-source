################################
#####   Schemas    ######
################################

resource "snowflake_schema" "ingest" {
  name     = upper(var.source_name)
  database = var.ingest_database_id

  is_transient        = try(var.ingest_schema_config.is_transient, null)
  is_managed          = try(var.ingest_schema_config.is_managed, null)
  data_retention_days = try(var.ingest_schema_config.data_retention_days, null)
}

resource "snowflake_table" "ingest" {
  database = var.ingest_database_id
  schema   = snowflake_schema.ingest.name
  name     = upper(var.table_name)
  comment  = "created by terraform"

  column {
    name = var.column_name
    type = var.colume_type
  }

  primary_key {
    keys = var.keys_list
  }
}

resource "snowflake_file_format" "ingest" {
  for_each = var.source_files_format_dictionary
  # required
  name        = upper(var.fileformat_name)
  database    = var.ingest_database_id
  schema      = snowflake_schema.ingest.name
  format_type = try(var.source_files_format_dictionary.format_type, null)
  # optional
  allow_duplicate                = try(var.source_files_format_dictionary.allow_duplicate, null)
  binary_as_text                 = try(var.source_files_format_dictionary.binary_as_text, null)
  binary_format                  = try(var.source_files_format_dictionary.binary_format, null)
  comment                        = try(var.source_files_format_dictionary.comment, null)
  compression                    = try(var.source_files_format_dictionary.compression, null)
  date_format                    = try(var.source_files_format_dictionary.date_format, null)
  disable_auto_convert           = try(var.source_files_format_dictionary.disable_auto_convert, null)
  disable_snowflake_data         = try(var.source_files_format_dictionary.disable_snowflake_data, null)
  empty_field_as_null            = try(var.source_files_format_dictionary.empty_field_as_null, null)
  enable_octal                   = try(var.source_files_format_dictionary.enable_octal, null)
  encoding                       = try(var.source_files_format_dictionary.encoding, null)
  error_on_column_count_mismatch = try(var.source_files_format_dictionary.error_on_column_count_mismatch, null)
  escape                         = try(var.source_files_format_dictionary.escape, null)
  escape_unenclosed_field        = try(var.source_files_format_dictionary.escape_unenclosed_field, null)
  field_delimiter                = try(var.source_files_format_dictionary.field_delimiter, null)
  field_optionally_enclosed_by   = try(var.source_files_format_dictionary.field_optionally_enclosed_by, null)
  file_extension                 = try(var.source_files_format_dictionary.file_extension, null)
  ignore_utf8_errors             = try(var.source_files_format_dictionary.ignore_utf8_errors, null)
  null_if                        = try(var.source_files_format_dictionary.null_if, null)
  preserve_space                 = try(var.source_files_format_dictionary.preserve_space, null)
  record_delimiter               = try(var.source_files_format_dictionary.record_delimiter, null)
  replace_invalid_characters     = try(var.source_files_format_dictionary.replace_invalid_characters, null)
  skip_blank_lines               = try(var.source_files_format_dictionary.skip_blank_lines, null)
  skip_byte_order_mark           = try(var.source_files_format_dictionary.skip_byte_order_mark, null)
  skip_header                    = try(var.source_files_format_dictionary.skip_header, null)
  strip_null_values              = try(var.source_files_format_dictionary.strip_null_values, null)
  strip_outer_array              = try(var.source_files_format_dictionary.strip_outer_array, null)
  strip_outer_element            = try(var.source_files_format_dictionary.strip_outer_element, null)
  time_format                    = try(var.source_files_format_dictionary.time_format, null)
  timestamp_format               = try(var.source_files_format_dictionary.timestamp_format, null)
  trim_space                     = try(var.source_files_format_dictionary.trim_space, null)
}

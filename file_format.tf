resource "snowflake_file_format" "ingest" {
  for_each = var.source_files_format_dictionary
  //required
  name        = each.value.name
  database    = var.ingest_database_id
  schema      = snowflake_schema.ingest_source_schema.name
  format_type = each.value.format_type
  //optional
  allow_duplicate                = try(each.value.allow_duplicate, null)
  binary_as_text                 = try(each.value.binary_as_text, null)
  binary_format                  = try(each.value.binary_format, null)
  comment                        = try(each.value.comment, null)
  compression                    = try(each.value.compression, null)
  date_format                    = try(each.value.date_format, null)
  disable_auto_convert           = try(each.value.disable_auto_convert, null)
  disable_snowflake_data         = try(each.value.disable_snowflake_data, null)
  empty_field_as_null            = try(each.value.empty_field_as_null, null)
  enable_octal                   = try(each.value.enable_octal, null)
  encoding                       = try(each.value.encoding, null)
  error_on_column_count_mismatch = try(each.value.error_on_column_count_mismatch, null)
  escape                         = try(each.value.escape, null)
  escape_unenclosed_field        = try(each.value.escape_unenclosed_field, null)
  field_delimiter                = try(each.value.field_delimiter, null)
  field_optionally_enclosed_by   = try(each.value.field_optionally_enclosed_by, null)
  file_extension                 = try(each.value.file_extension, null)
  ignore_utf8_errors             = try(each.value.ignore_utf8_errors, null)
  null_if                        = try(each.value.null_if, null)
  preserve_space                 = try(each.value.preserve_space, null)
  record_delimiter               = try(each.value.record_delimiter, null)
  replace_invalid_characters     = try(each.value.replace_invalid_characters, null)
  skip_blank_lines               = try(each.value.skip_blank_lines, null)
  skip_byte_order_mark           = try(each.value.skip_byte_order_mark, null)
  skip_header                    = try(each.value.skip_header, null)
  strip_null_values              = try(each.value.strip_null_values, null)
  strip_outer_array              = try(each.value.strip_outer_array, null)
  strip_outer_element            = try(each.value.strip_outer_element, null)
  time_format                    = try(each.value.time_format, null)
  timestamp_format               = try(each.value.timestamp_format, null)
  trim_space                     = try(each.value.trim_space, null)
  validate_utf8                  = try(each.value.validate_utf8, null)
}

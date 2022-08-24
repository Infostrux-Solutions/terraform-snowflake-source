## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_snowflake"></a> [snowflake](#provider\_snowflake) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [snowflake_file_format.ingest](https://registry.terraform.io/providers/chanzuckerberg/snowflake/latest/docs/resources/file_format) | resource |
| [snowflake_schema.ingest_source_schema](https://registry.terraform.io/providers/chanzuckerberg/snowflake/latest/docs/resources/schema) | resource |
| [snowflake_table.ingest](https://registry.terraform.io/providers/chanzuckerberg/snowflake/latest/docs/resources/table) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ingest_database_id"></a> [ingest\_database\_id](#input\_ingest\_database\_id) | Database that will ingest the data from the data pipeline | `string` | n/a | yes |
| <a name="input_ingest_schema_config"></a> [ingest\_schema\_config](#input\_ingest\_schema\_config) | All config except the schema name for the ingest | `map(any)` | `{}` | no |
| <a name="input_ingest_tables_config"></a> [ingest\_tables\_config](#input\_ingest\_tables\_config) | Raw table of the source | `map(any)` | `{}` | no |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | Put the specify prefix in front of database name ex: ENV\_ | `string` | `""` | no |
| <a name="input_source_files_format_dictinnary"></a> [source\_files\_format\_dictionary](#input\_source\_files\_format\_dictionary) | Raw table of the source | `map(any)` | `{}` | no |
| <a name="input_source_name"></a> [source\_name](#input\_source\_name) | Will name the schemas | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_source_schema_name"></a> [source\_schema\_name](#output\_source\_schema\_name) | Source schema name|
| <a name="output_source_schema_ids"></a> [source\_schema\_ids](#output\_source\_schema\_ids) | Source schema id |
| <a name="output_source_table_name"></a> [source\_table\_name](#output\_source\_table\_name) | source table name |
| <a name="output_source_table_ids"></a> [source\_table\_ids](#output\_source\_table\_ids) | Source table ids |
| <a name="output_file_format_names"></a> [file\_format\_names](#output\_file\_format\_names) | File format names |
| <a name="output_file_format_ids"></a> [file\_format\_ids](#output\_file_\format\_ids) | File format ids |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Authors

Module is maintained by [Infostrux Solutions](mailto:opensource@infostrux.com)

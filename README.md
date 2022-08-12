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

No outputs.

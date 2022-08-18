terraform {
  required_version = ">= 0.13.1"
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = ">=0.40.0"
    }
  }
}

provider "snowflake" {
  role = "SYSADMIN"
}

module "ingest" {
  source = "../../"

  source_name = "test"

  ingest_database_id = "DATABASE_EXAMPLE"

  ingest_schema_config = {
    is_managed          = "false",
    is_transient        = "false",
    data_retention_days = 1
  }

  table_name  = "test_table"
  column_name = "first_test"
  colume_type = "VARIANT"
  keys_list   = ["first_test"]

  fileformat_name                = "test_name"
  source_files_format_dictionary = { format_type = "CSV" }
}

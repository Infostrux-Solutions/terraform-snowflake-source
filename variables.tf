variable "source_name" {
  type        = string
  description = "Will name the schemas"
}
variable "table_name" {
  type        = string
  description = "Will name the table"
}

variable "file_format_name" {
  type        = string
  description = "Will name the file formate"
}

variable "ingest_database_id" {
  type        = string
  description = "Database that will ingest the data from the data pipeline"
}

variable "source_files_format_dictionary" {
  type        = map(any)
  description = "Files format for the Source."
  default     = {}
}

variable "ingest_schema_config" {
  type        = map(any)
  description = "All config except the schema name for the ingest"
  default     = {}
  validation {
    condition = (
      length(var.ingest_schema_config) > 0
    )
    error_message = "Ingest schema is required and cannot be empty."
  }
}

variable "column_name" {
  type        = string
  description = "Name of the column"
}

variable "column_type" {
  type        = string
  description = "Type of column"
}

variable "keys_list" {
  type        = list(string)
  description = "Primary key values"
  default     = []
}

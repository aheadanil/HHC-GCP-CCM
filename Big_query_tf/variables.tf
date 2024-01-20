variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
}

variable "dataset_id" {
  description = "ID for the BigQuery dataset"
  type        = string
}

variable "env" {
    type = string
    description = "environment of the dataset"
}

variable "description" {
    type = string
    description = "desciption of the module"
    default = "This is a dataset creation for reuired project"
  
}
variable "member" {
  description = "this is the service account for harness"
  type        = string
}

variable "location" {
  description = "Location for the BigQuery dataset"
  type        = string
  default     = "US" # Modify the default location as needed
}

variable "service_account_email" {
  description = "Email of the service account to grant access"
  type        = string
}

variable "table_id" {
    description = "this is about table creation"
    type = string
}

// Configure the Google Cloud provider
provider "google" {
  project     = var.project_id
  region      = var.region
}


resource "google_project_iam_member" "service_account_member" {
  project = var.project_id
  role    = "roles/compute.viewer"
  member = "serviceAccount:${var.service_account_email}"
}

#Create a dataset in GCP
resource "google_bigquery_dataset" "bigquery_dataset" {
  dataset_id                  = var.dataset_id
  friendly_name               = "example_dataset"
  description                 = var.description
  location                    = var.location
  default_table_expiration_ms = 3600000
}
 
#Grant datatset access to harness service account
resource "google_bigquery_dataset_iam_binding" "dataset_share_binding" {
  dataset_id = google_bigquery_dataset.bigquery_dataset.dataset_id
  role    = "roles/bigquery.dataViewer"
  members = ["serviceAccount:${var.service_account_email}"]
}
 
#Create a table in our dataset
resource "google_bigquery_table" "bigquery_table" {
  dataset_id = google_bigquery_dataset.bigquery_dataset.dataset_id
  table_id   = var.table_id
  labels = {
    env = "default"
  }
}
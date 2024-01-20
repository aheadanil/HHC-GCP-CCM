# HHC-GCP-CCM
this is for Big query terraform code
## Requirements

These sections describe requirements for using this module.

### Software

The following dependencies must be available:

- [Terraform](https://www.terraform.io/downloads.html) >= 0.13.0
- [Terraform Provider for GCP][terraform-provider-gcp] plugin v3

### Service Account

A service account with the following roles must be used to provision
the resources of this module:

<!-- - BigQuery Data Owner: `roles/bigquery.dataOwner` -->
- IAM admin role

### APIs

A project with the following APIs enabled must be used to host the
resources of this module:

- BigQuery API: `bigquery-json.googleapis.com`
- Compute Engine API
- cloud logging API
- Cloud Source Repositories API
- Cloud Build API
- IAM (Identity and Access Management) Service Account Credentials API
- Identity and Access Management (IAM) API

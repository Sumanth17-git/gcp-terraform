terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.19.0"
    }
  }
}
provider "google" {
  project     = "aiops-447509"  # Replace with your GCP Project ID
  region      = "us-east4"
}

resource "google_storage_bucket" "my-bucket" {
  name          = "sumi-simple-bucket" # Bucket name must be globally unique
  location      = "US" # Multi-region location
  force_destroy = true # Allows the bucket to be deleted even if it contains objects
}
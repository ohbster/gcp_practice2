terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.25.0"
    }
  }
}

provider "google" {
  # Configuration options
  project = var.project_name
  region = "us-central1"
  zone = "us-central1-a"
  credentials = file(var.credentials)
}

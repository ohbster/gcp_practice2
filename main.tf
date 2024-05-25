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
  #credentials = "/home/ohbster/Cloud/GCP/auth/travel-plans-class-5-9f56545a27dd.json"
  credentials = file(var.credentials)
}

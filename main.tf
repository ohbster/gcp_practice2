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
  project = "travel-plans-class-5"
  region = "us-central1"
  zone = "us-central1-a"
  credentials = "/home/ohbster/Cloud/GCP/auth/travel-plans-class-5-9f56545a27dd.json"
}

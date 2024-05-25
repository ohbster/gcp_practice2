resource "google_compute_network" "vpc_network" {
  project                 = var.project_name
  name                    = var.network_name
  auto_create_subnetworks = false
  mtu                     = 1460
}

resource "google_compute_subnetwork" "private-subnet" {
  name          = "public-1"
  ip_cidr_range = "10.210.1.0/24"
  region        = "us-central1"
  network       = google_compute_network.vpc_network.id
#   secondary_ip_range {
#     range_name    = "tf-test-secondary-range-update1"
#     ip_cidr_range = "192.168.10.0/24"
#   }
}

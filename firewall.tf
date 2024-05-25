# Get your machines IP to open the firewall for webportal and ssh
data "external" "myip" {
    program = ["curl", "-s", "https://ifconfig.me/all.json"]
}
locals {
  myip = data.external.myip.result.ip_addr
}

resource "google_compute_firewall" "ssh" {
  name          = "ssh"
  project = var.project_name
  provider      = google-beta
  direction     = "INGRESS"
  network       = google_compute_network.vpc_network.id
  source_ranges = ["${local.myip}/32"]
  allow {
    protocol = "tcp"
    ports = [ "64295"]
  }
}

resource "google_compute_firewall" "webportal" {
  name          = "web-portal"
  project = var.project_name
  provider      = google-beta
  direction     = "INGRESS"
  network       = google_compute_network.vpc_network.id
  source_ranges = ["${local.myip}/32"]
  allow {
    protocol = "tcp"
    ports = [ "64297"]
  }
}

resource "google_compute_firewall" "bad-guys" {
  name          = "allow-badguys"
  project = var.project_name
  provider      = google-beta
  direction     = "INGRESS"
  network       = google_compute_network.vpc_network.id
  source_ranges = ["0.0.0.0/0"]
  
  allow {
    protocol = "tcp"
    ports = [ "0-64000" ]
  }
}

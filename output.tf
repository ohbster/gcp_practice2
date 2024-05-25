output "username" {
    value = "username: webuser"
}
output "password" {
  value = "password: ${random_string.password.result}"
}
output "instance_ip" {
    value = "Web Portal: https://${google_compute_instance.sample-i.network_interface.0.access_config.0.nat_ip}:64297"
}

output "vpc_id" {
  value = google_compute_network.vpc_network.id
}

output "bucket_url" {
  value = google_storage_bucket.bucket.url
}
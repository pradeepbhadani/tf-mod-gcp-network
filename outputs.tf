output "network_name" {
  description = "VPC Network name."
  value       = google_compute_network.network.name
}

output "network_self_link" {
  description = "Self Link of VPC Network."
  value       = google_compute_network.network.self_link
}

output "subnet_self_link" {
  description = "Subnet Self Link."
  value       = google_compute_subnetwork.subnet.self_link
}

resource "google_compute_firewall" "ssh" {
  name    = "${var.network_name}-ssh-firewall"
  network = google_compute_network.network.name
  project = var.project_id

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = var.ssh_source_ranges
}

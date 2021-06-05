resource "google_compute_network" "network" {
  name                            = var.network_name
  project                         = var.project_id
  description                     = var.network_description
  auto_create_subnetworks         = var.auto_create_subnetworks
  routing_mode                    = var.routing_mode
  delete_default_routes_on_create = var.delete_default_routes_on_create
  mtu                             = var.mtu

}

resource "google_compute_subnetwork" "subnet" {
  name                     = var.subnet_name
  project                  = var.project_id
  ip_cidr_range            = var.subnet_ip_cidr
  region                   = var.gcp_region
  network                  = google_compute_network.network.id
  private_ip_google_access = var.private_ip_google_access
}

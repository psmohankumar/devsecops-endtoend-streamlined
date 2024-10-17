data "google_compute_network" "vpc" {
  name = var.vpc
}

data "google_compute_subnetwork" "subnet1" {
  name = var.subnet1
  #network = data.google_compute_network.vpc.id
}

# Define a network
# resource "google_compute_network" "vpc" {
#   name = var.vpc
#   auto_create_subnetworks = false
# }

# resource "google_compute_subnetwork" "subnet1" {
#   name = var.subnet1
#   network = google_compute_network.vpc.id
#   ip_cidr_range = "10.10.10.0/24"
#   private_ip_google_access = true
# }
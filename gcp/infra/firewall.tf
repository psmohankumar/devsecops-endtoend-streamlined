resource "google_compute_firewall" "allow-jenkins-8080" {
  name    = "allow-jenkins-8080"
  network = data.google_compute_network.vpc.id

  allow {
    protocol = "tcp"
    ports    = ["22", "8080", "9000"]
  }
  source_ranges = ["0.0.0.0/0"]
  target_tags =  ["jenkins"]
}
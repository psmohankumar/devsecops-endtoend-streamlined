
# Define a VM instance
resource "google_compute_instance" "jenkins" {
  name         = "jenkins"
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-12-bookworm-v20240910"
      size  = 50
      type  = "pd-balanced"
    }
    auto_delete = true
  }

  network_interface {
    subnetwork = data.google_compute_subnetwork.subnet1.id
    access_config {
      # Include this section to give the VM an external IP
    }
  }

#   service_account {
#     email  = var.sa
#     scopes = ["https://www.googleapis.com/auth/cloud-platform"]
#   }
  metadata_startup_script = templatefile("./startup.sh", {})

  tags = ["jenkins"]

}

# Output the external IP address of the Jenkins server
output "jenkins_ip" {
  value = google_compute_instance.jenkins.network_interface[0].access_config[0].nat_ip
}


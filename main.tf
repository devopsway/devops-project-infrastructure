resource "google_compute_instance" "default" {
  project                   = google_project.my_project.project_id
  name                      = "dev-app-vm"
  machine_type              = "e2-small"
  zone                      = "asia-southeast1-b"
  allow_stopping_for_update = true

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-lts"
      size  = 50
    }
  }
  network_interface {
    subnetwork = "dev-network"

    access_config {
      nat_ip = google_compute_address.dev_static_ip.address
    }
  }

  tags = ["web"]

  lifecycle {
    ignore_changes = [
      metadata
    ]
  }

}

resource "google_compute_instance" "default" {
  project      = google_project.my_project.project_id
  name         = "dev-app-vm"
  machine_type = "e2-small"
  zone         = "asia-southeast1-b"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-lts"
      size  = 50
    }
  }



  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

}

resource "google_compute_address" "dev_static_ip" {
  name    = "dev-static-ip"
  project = google_project.my_project.project_id
  region  = "asia-southeast1"
}

resource "google_compute_address" "dev_static_ip" {
  name    = "dev-static-ip"
  project = google_project.my_project.project_id
  region  = "asia-southeast1"
}

resource "google_compute_address" "dev_jenkins_static_ip" {
  name    = "dev-jenkins-ip"
  project = google_project.my_project.project_id
  region  = "asia-southeast1"
}

resource "google_compute_address" "dev_monitor_static_ip" {
  name    = "dev-monitor-ip"
  project = google_project.my_project.project_id
  region  = "asia-southeast1"
}

provider "google" {
    credentials = file("terraform-key.json")

    project = "terraform-ba-154-e67b5039"
    region = "us-central1"
    zone = "us-central1-c"
}

resource "google_compute_network" "vpc_network" {
    name = "terraform-network"
}

resource "google_compute_instance" "vm_instance" {
    name = "terraform-instance"
    machine_type = "f1-micro"

    boot_disk {
      initialize_params {
        image = "debian-cloud/debian-9"
      }
    }

    network_interface {
      network = google_compute_network.vpc_network.name
      access_config {
        
      }
    }
}

resource "google_compute_address" "vm_static_ip" {
  name = "terraform-static-ip"
}
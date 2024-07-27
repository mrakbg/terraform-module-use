
provider "google" {

  project = var.prjectid
  region  = var.region
  
}


resource "google_storage_bucket" "gcs" {
    name = var.bucketname
    location = var.location
    force_destroy = var.force_destroy
}



resource "google_compute_instance" "def" {
  name         = var.instancename
  machine_type = var.instancetype
  zone = var.zone




  boot_disk {
    initialize_params {
      image = var.image

    }
  }

  network_interface {
    network = "default"
    access_config {

    }
  }
}




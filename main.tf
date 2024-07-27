
provider "google" {

  project = var.prjectid
  region  = var.region
  
}

# terraform {
#   backend "gcs" {
#     bucket = "anuj177"
#     prefix = "terrafor/state"
    
    
#   }
# }

resource "google_storage_bucket" "gcs" {
    name = var.bucketname
    location = var.location
    force_destroy = var.force_destroy
}



resource "google_compute_instance" "default" {
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




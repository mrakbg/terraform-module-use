terraform {
  backend "gcs" {
    name = "anuj177"
    prefix = "terraform/state"
    
  }
}
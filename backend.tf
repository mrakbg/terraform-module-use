terraform {
  backend "gcs" {
    bucket  = "anuj177"  # enter your GCS bucket name
    prefix  = "terraform/state"              # optional: directory within the bucket to store the state file
  }
}

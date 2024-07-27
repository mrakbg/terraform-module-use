provider "google" {
     project = "plucky-courier-429308-h9" #projectid
     region = "us-east1"  #region

}


resource "google_storage_bucket" "gcs" {
    name = "anuj177" #bucketname
    location = "US"  #location
    force_destroy = "true" 
}

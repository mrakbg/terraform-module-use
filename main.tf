provider "google" {
     project = "plucky-courier-429308-h9"
     region = "us-east1"  

}

 module "ec2" {
    source = "https://github.com/mrakbg/terraform-module.git//ec2_instance"
    bucketname = "anuj177"
    location = "US"
    instancename = "anuj"
    image = "debian-cloud/debian-12"
    instancetype = "e2-micro"
    zone = "us-east1-b"
    force_destroy = "true"
    
}



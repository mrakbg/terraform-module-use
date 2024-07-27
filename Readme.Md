Hello, How to use modules in Terraform

I already created one module for ec2_instance where we use GCS as backend for statefile.

Before that we need to create GCS bucket. You can do it manually. create bucket and copy the name of the bucket. paste it ssomewhere safe.

Steps : 

clone this repo. and in place of variable values, you can specify whatever your values are.

    source = "https://github.com/mrakbg/terraform-module.git//ec2_instance"
    bucketname = "anuj177"
    location = "US"
    instancename = "anuj"
    image = "debian-cloud/debian-12"
    instancetype = "e2-micro"
    zone = "us-east1-b"
    force_destroy = "true"
    
 
after this now you should have main.tf ready  in your IDE(vs code).

Do terraform init and then apply. That's it.

HUHAHUHAHUHAUHI

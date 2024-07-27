

# Hello, How to use modules in Terraform

I already created modules 

## Prerequisites

Before starting, you need to create a GCS bucket manually or use tocreatebucket.tf file to create bucket using terraform. Once created, copy the name of the bucket and save it somewhere safe.

## Steps

1. **Clone this repository**.

2. **Replace variable values** in the `main.tf` file with your specific values:

    ```hcl
    source = "https://github.com/mrakbg/terraform-module.git//ec2_instance"
    bucketname = "anuj177"
    location = "US"
    instancename = "anuj"
    image = "debian-cloud/debian-12"
    instancetype = "e2-micro"
    zone = "us-east1-b"
    force_destroy = "true"
    ```

3. **Create the `main.tf` file** with the following content:

    ```hcl
    provider "google" {
      project = "projectid"  # enter project ID
      region  = "region"     # enter region
    }

    module "ec2" {
      source = "https://github.com/mrakbg/terraform-module.git//ec2_instance"
      bucketname = "anuj177"       # enter your bucket name
      location = "US"              # enter your location
      instancename = "anuj"        # enter your instance name
      image = "debian-cloud/debian-12" # enter your image
      instancetype = "e2-micro"    # enter your instance type
      zone = "us-east1-b"          # enter your zone
      force_destroy = "true"       # enter your force destroy preference
    }
    ```

4. **Create the `backend.tf` file** with the following content:

    ```hcl
    terraform {
      backend "gcs" {
        bucket  = "your-terraform-state-bucket"  # enter your GCS bucket name
        prefix  = "terraform/state"              # optional: directory within the bucket to store the state file
      }
    }
    ```

5. **Initialize and apply** the Terraform configuration:

    ```sh
    terraform init
    terraform apply
    ```

That's it!

HUHAHUHAHUHAUHI

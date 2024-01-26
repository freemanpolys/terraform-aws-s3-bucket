# Use case
Create s3 backend for terraform tfstate

# How to use it
```
module "tf_s3_backend" {
  source = "../../modules/terraform-aws-cli-create-s3-bucket"
  project_name = var.project_name
  tf_s3_region = var.tf_s3_region
}

```
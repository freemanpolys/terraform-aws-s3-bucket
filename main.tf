resource "terraform_data" "s3_bucket" {
  input =  lower("s3-${var.project_name}-${var.s3_bucket_name}")
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = terraform_data.s3_bucket.output
    tags = merge(tomap({
     "Name" = var.s3_bucket_name,
     "Type" = "S3"
     "Project" = var.project_name
     "CreateBy" = "Terraform"
   }), var.tags)
}

resource "aws_s3_bucket_public_access_block" "s3_bucket" {
  bucket = aws_s3_bucket.s3_bucket.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
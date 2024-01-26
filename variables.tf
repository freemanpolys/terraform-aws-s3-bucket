variable "project_name" {
    type = string
    description = "Project name"
}
variable "s3_region" {
    type = string
    description = "S3 bucket region"
}
variable "s3_bucket_name" {
    type = string
    description = "S3 bucket name"
}

variable "tags" {
  type = map(string)
  description = "Tags"
  default = {
    "Name" = "S3 bucket",
    "CreateBy" = "Terraform"
  }
}
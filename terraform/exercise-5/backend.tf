terraform {
  backend "s3" {
    bucket = "bucket-name"
    key = "path/to/state/file"
    region = var.AWS_REGION
  }
}
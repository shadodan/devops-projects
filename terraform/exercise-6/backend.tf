terraform {
  backend "s3" {
    bucket = "bucket-name"
    key    = "path/to/state/file.tfstate"
    region = "sa-east-1"
  }
}
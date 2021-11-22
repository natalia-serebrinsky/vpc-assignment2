# Move the current state of your environment to remote state in S3#

terraform {
  backend "s3" {
    bucket = "state-file-bucket"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
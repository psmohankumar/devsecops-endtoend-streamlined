terraform {
  backend "s3" {
    bucket = "psmk-aws-tf"
    key    = "devsecops-streamlined/terraform.tfstate"
    region = "us-east-1"
  }
}

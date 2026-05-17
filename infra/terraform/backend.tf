terraform {
  backend "s3" {
    bucket = "omar-ecs-project3421"
    key    = "ecs-devops/terraform.tfstate"
    region = "eu-west-2"
  }
}

# ----------------------------------------
# EXPLANATION
# ----------------------------------------
#
# backend "s3":
# Stores Terraform state remotely in AWS S3.
#
# bucket:
# Name of the S3 bucket.
#
# key:
# Path/name of the Terraform state file.
#
# region:
# AWS region where bucket exists.
#
# ClickOps equivalent:
# Saving infrastructure configuration
# into centralized AWS-managed storage.
#
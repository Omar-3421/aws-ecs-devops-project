terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

# -----------------------------------------
# EXPLANATION
# -----------------------------------------
#
# terraform block:
# Defines which providers Terraform needs.
#
# aws provider:
# Tells Terraform we want to interact with AWS.
#
# source:
# Downloads the AWS provider from HashiCorp.
#
# version:
# Uses AWS provider version 5.x.
#
# provider "aws":
# Configures the AWS connection.
#
# region = var.aws_region:
# Uses a variable instead of hardcoding the region.
#
# ClickOps equivalent:
# Selecting your AWS region in the AWS Console.
#
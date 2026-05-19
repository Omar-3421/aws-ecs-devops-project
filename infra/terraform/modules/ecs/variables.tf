variable "aws_region" {
  default = "eu-west-2"
}

variable "cluster_name" {
  default = "ecs-devops-cluster"
}

variable "container_image" {}

variable "execution_role_arn" {}

variable "subnet_ids" {
  type = list(string)
}

variable "vpc_id" {
}

variable "desired_count" {
  default = 1
}

variable "target_group_arn" {}
# -----------------------------------------
# EXPLANATION
# -----------------------------------------
#
# Variables allow reusable infrastructure.
#
# Instead of hardcoding values directly
# into resources, we store them as variables.
#
# aws_region:
# Stores the AWS deployment region.
#
# cluster_name:
# Stores the ECS cluster name.
#
# ClickOps equivalent:
# Typing values into AWS Console form fields.
#
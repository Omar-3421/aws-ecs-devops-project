variable "aws_region" {
  default = "eu-west-2"
}

variable "cluster_name" {
  default = "ecs-devops-cluster"
}

variable "container_image" {
  default = "848960888054.dkr.ecr.eu-west-2.amazonaws.com/aws-ecs-devops-project:v6"
}

variable "execution_role_arn" {
  default = "arn:aws:iam::848960888054:role/ecsTaskExecutionRole"
}
resource "aws_ecs_cluster" "main" {
  name = var.cluster_name
}

resource "aws_ecs_task_definition" "app" {
  family                   = "flask-app"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]

  cpu    = "256"
  memory = "512"

  execution_role_arn = var.execution_role_arn

  container_definitions = jsonencode([
    {
      name      = "flask-app"
      image     = var.container_image
      essential = true

      portMappings = [
        {
          containerPort = 80
          hostPort      = 80
          protocol      = "tcp"
        }
      ]
    }
  ])
}
# -----------------------------------------
# EXPLANATION
# -----------------------------------------
#
# resource:
# Defines infrastructure Terraform should create.
#
# aws_ecs_cluster:
# AWS ECS Cluster resource type.
#
# "main":
# Internal Terraform resource name.
#
# name = var.cluster_name:
# Uses the cluster_name variable.
#
# Terraform will call AWS APIs and create:
#
# ECS → Clusters → terraform-ecs-cluster
#
# ClickOps equivalent:
# Clicking:
#
# ECS → Create Cluster
#
# and manually entering the cluster name.
#
resource "aws_ecs_cluster" "main" {
  name = var.cluster_name
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
output "cluster_name" {
  value = aws_ecs_cluster.main.name
}

# -----------------------------------------
# EXPLANATION
# -----------------------------------------
#
# Outputs display useful information
# after Terraform creates infrastructure.
#
# Here we output:
# the ECS cluster name.
#
# aws_ecs_cluster.main.name:
# References the ECS cluster resource.
#
# Terraform reference syntax:
#
# resource_type.resource_name.attribute
#
# ClickOps equivalent:
# Viewing resource details in AWS Console.
#
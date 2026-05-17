output "cluster_name" {
  value = aws_ecs_cluster.main.name
}

output "service_name" {
  value = aws_ecs_service.app.name
}

output "task_definition_arn" {
  value = aws_ecs_task_definition.app.arn
}

output "security_group_id" {
  value = aws_security_group.ecs_service.id
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
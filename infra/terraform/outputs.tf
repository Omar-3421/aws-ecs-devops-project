output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_ids" {
  value = module.vpc.public_subnet_ids
}

output "internet_gateway_id" {
  value = module.vpc.internet_gateway_id
}

output "ecs_cluster_name" {
  value = module.ecs.cluster_name
}

output "ecs_service_name" {
  value = module.ecs.service_name
}

output "ecs_task_definition_arn" {
  value = module.ecs.task_definition_arn
}

output "ecs_security_group_id" {
  value = module.ecs.security_group_id
}
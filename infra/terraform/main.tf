module "ecs" {
  source = "./modules/ecs"

  cluster_name       = var.cluster_name
  container_image    = var.container_image
  execution_role_arn = var.execution_role_arn

  subnet_ids    = var.subnet_ids
  desired_count = var.desired_count
}
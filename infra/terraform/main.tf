module "vpc" {
  source = "./modules/vpc"
}

module "ecs" {
  source = "./modules/ecs"

  cluster_name       = var.cluster_name
  container_image    = var.container_image
  execution_role_arn = var.execution_role_arn

  vpc_id        = module.vpc.vpc_id
  subnet_ids    = module.vpc.public_subnet_ids
  desired_count = var.desired_count
}
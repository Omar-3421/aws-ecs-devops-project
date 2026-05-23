module "vpc" {
  source = "./modules/vpc"

}


module "alb" {
  source = "./modules/alb"

  vpc_id            = module.vpc.vpc_id
  public_subnet_ids = module.vpc.public_subnet_ids
  certificate_arn   = "arn:aws:acm:eu-west-2:848960888054:certificate/550e1c25-0532-4862-8df7-35db21cac6b7"
}

module "ecr" {
  source = "./modules/ecr"
}

module "ecs" {
  source = "./modules/ecs"

  cluster_name       = var.cluster_name
  container_image    = var.container_image
  execution_role_arn = var.execution_role_arn

  vpc_id        = module.vpc.vpc_id
  subnet_ids    = module.vpc.public_subnet_ids
  desired_count = var.desired_count

  aws_region = var.aws_region

  target_group_arn = module.alb.target_group_arn
}

resource "cloudflare_dns_record" "ecs" {
  zone_id = var.cloudflare_zone_id
  name    = "ecs"
  content = module.alb.alb_dns_name
  type    = "CNAME"
  ttl     = 1
  proxied = false
}
resource "aws_lb" "demo" {
  name_prefix        = var.alb_name_prefix
  internal           = false
  load_balancer_type = "application"
  security_groups    = var.alb_security_groups
  subnets            = var.alb_subnets

  enable_cross_zone_load_balancing = true

  tags = merge(var.common_tags, map(
    "Name", "terraform-demo-iam-role-ecs-service",
  ))
}
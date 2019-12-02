resource "aws_lb" "alb" {
  name            = var.name
  internal        = var.internal
  security_groups = var.security_groups
  subnets         = var.subnets
  dynamic "access_logs" {
    for_each = var.access_logs
    content {
      bucket  = access_logs.value.bucket
      enabled = lookup(access_logs.value, "enabled", null)
      prefix  = lookup(access_logs.value, "prefix", null)
    }
  }
  tags = var.common_tags
}
resource "aws_lb" "lb" {
  name               = var.name
  name_prefix        = var.name_prefix
  internal           = var.internal
  load_balancer_type = var.load_balancer_type
  security_groups    = var.security_groups

  dynamic "access_logs" {
    for_each = var.access_logs
    content {
      bucket  = access_logs.value.bucket
      enabled = lookup(access_logs.value, "enabled", null)
      prefix  = lookup(access_logs.value, "prefix", null)
    }
  }

  subnets = var.subnets
  
  dynamic "subnet_mapping" {
    for_each = var.access_logs
    content {
      bucket  = subnet_mapping.value.bucket
      enabled = lookup(subnet_mapping.value, "subnet_id", null)
      prefix  = lookup(subnet_mapping.value, "allocation_id", null)
    }
  }

  enable_deletion_protection       = var.enable_deletion_protection
  enable_cross_zone_load_balancing = var.enable_cross_zone_load_balancing
  enable_http2                     = var.enable_http2
  tags                             = var.tags
}
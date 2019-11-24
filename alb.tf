resource "aws_lb" "alb" {
  name            = "${var.name}"
  internal        = "${var.internal}"
  security_groups = ["${var.security_groups}"]
  subnets         = ["${var.subnets}"]
  access_logs     = "${var.access_logs}"
  tags            = "${var.common_tags}"
}
output "dns_name" {
  value = "${aws_alb.lb.dns_name}"
}

output "id" {
  value = "${aws_alb.lb.id}"
}

output "arn" {
  value = "${aws_alb.lb.arn}"
}
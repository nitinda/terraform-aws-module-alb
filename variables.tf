## ALB
variable "name" {
  description = "Creates a unique name beginning with the specified prefix."
}

variable "internal" {
  description = "If true, the LB will be internal."
}

variable "load_balancer_type" {
  description = "The type of load balancer to create."
}

variable "security_groups" {
  description = "A list of security group IDs to assign to the LB. Only valid for Load Balancers of type application."
  type        = list(string)
  default     = null
}

variable "subnets" {
  description = " A list of subnet IDs to attach to the LB. Subnets cannot be updated for Load Balancers of type network."
  type        = list(string)
}

variable "access_logs" {
  description = "An Access Logs block."
  type        = list(string)
  default     = []
}

## Tags
variable "tags" {
  description = "Resources Tags"
  type        = map(string)
}
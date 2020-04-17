## ALB
variable "name" {
  description = "The name of the LB."
  default     = null
}

variable "name_prefix" {
  description = "Creates a unique name beginning with the specified prefix"
  default     = null
}

variable "internal" {
  description = "If true, the LB will be internal"
  default     = false
  type        = bool
}

variable "load_balancer_type" {
  description = "The type of load balancer to create"
  default     = "application"
}

variable "security_groups" {
  description = "A list of security group IDs to assign to the LB"
  type        = list(string)
  default     = []
}

variable "access_logs" {
  description = "An Access Logs block."
  type        = map(string)
  default     = {}
}

variable "subnets" {
  description = "A list of subnet IDs to attach to the LB"
  type        = lis(string)
  default     = []
}

variable "subnet_mapping" {
  description = "A subnet mapping block as documented below"
  type        = map(string)
  default     = {}
}


variable "enable_deletion_protection" {
  description = "If true, deletion of the load balancer will be disabled via the AWS API"
  default     = false
  type        = bool
}

variable "enable_cross_zone_load_balancing" {
  description = "If true, cross-zone load balancing of the load balancer will be enabled"
  default     = false
  type        = bool
}

variable "enable_http2" {
  description = "Indicates whether HTTP/2 is enabled in application load balancers"
  default     = true
  type        = bool
}

variable "tags" {
  description = "Resources Tags"
  type        = map(string)
  default     = {}
}
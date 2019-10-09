variable "alb_name_prefix" {
    description = "Creates a unique name beginning with the specified prefix."
}

variable "alb_security_groups" {
    type        = list(string)
    description = "A list of security group IDs to assign to the LB."
}

variable "alb_subnets" {
    description = "A list of subnet IDs to attach to the LB."
    type        = list(string)
}

## Tags
variable "common_tags" {
    description = "A mapping of tags to assign to the resource."
}
# _Terraform Module: terraform-module-aws-lb_
_Terraform module for **_Load Balancer_**_


<!--BEGIN STABILITY BANNER-->
---

![_Code : Stable_](https://img.shields.io/badge/Code-Stable-brightgreen?style=for-the-badge&logo=github)

> **_This is a stable example. It should successfully build out of the box_**
>

---
<!--END STABILITY BANNER-->


## _General_

_This module provides a_ **_Load Balancer_** _resources in AWS cloud provider......._

---


## _Prerequisites_

_This module needs_ **_Terraform 0.12.19_** _or newer._
_You can download the latest Terraform version from_ [_here_](https://www.terraform.io/downloads.html).

_This module deploys aws services details are in respective feature branches._


---

## _Features_

_Below we are able to check the resources that are being created as part of this module call:_


* **_Load Balancer_**



---

## _Usage_

## _Using this repo_

_To use this module, add the following call to your code:_


* **_Example: For Application Load Balancer_**

```tf
module "alb" {
  source = "git::https://github.com/nitinda/terraform-module-aws-lb.git?ref=master"

  providers = {
    aws = aws.services
  }

  name = "alb"

  security_groups = [
      module.security_group_alb.id
  ]

  subnets = [
      module.vpc_subnet_public_1a.id,
      module.vpc_subnet_public_1b.id
  ]

  tags = merge(
    var.common_tags,
    {
      Environment = "prod"
      Name        = "alb"
    }
  )
}

```

* **_Example: For Network Load Balancer_**

```tf
module "nlb" {
  source = "git::https://github.com/nitinda/terraform-module-aws-lb.git?ref=master"

  providers = {
    aws = aws.services
  }

  name               = "nlb"
  load_balancer_type = "network"

  subnets = [
      module.vpc_subnet_public_1a.id,
      module.vpc_subnet_public_1b.id
  ]

  tags = merge(
    var.common_tags,
    {
      Environment = "prod"
      Name        = "nlb"
    }
  )
}

```

---

## _Inputs_

_The variables required in order for the module to be successfully called from the deployment repository are the following:_


|**_Variable_** | **_Description_** | **_Type_** | **_Argument Status_** | **_Default Value_** |
|:----|:----|-----:|:---:|:---:|
| **_name_** | _The name of the LB_ | _string_ | **_Optional_** | **_null_** |
| **_name_** | _Creates a unique name beginning with the specified prefix_ | _string_ | **_Optional_** | **_null_** |
| **_internal_** | _If true, the LB will be internal_ | _bool_ | **_Optional_** | **_false_** |
| **_load\_balancer\_type_** | _The type of load balancer to create_ | _string_ | **_Optional_** | **_application_** |
| **_security\_groups_** | _ALB security group.<br/>This is a Application load balancer feature._ | _list(string)_ | **_Optional_** | **_[]_** |
| **_access\_logs_** | _An Access Logs block_ | _any_ | **_Optional_** | **_[]_** |
| **_subnets_** | _A list of subnet IDs to attach to the LB_ | _list(string)_ | **_Optional_** | **_[]_** |
| **_subnet\_mapping_** | _A subnet mapping block as documented below_ | _list(string)_ | **_Optional_** | **_[]_** |
| **_enable\_deletion\_protection_** | _If true, deletion of the load balancer <br/>will be disabled via the AWS API_ | _boolean_ | **_Optional_** | **_false_** |
| **_enable\_cross\_zone\_load\_balancing_** | _If true, cross-zone load balancing of <br/>the load balancer will be enabled.<br/>This is a network load balancer feature._ | _boolean_ | **_Optional_** | **_false_** |
| **_enable\_http2_** | _Indicates whether HTTP/2 is enabled in <br/>application load balancers_ | _boolean_ | **_Optional_** | **_true_** |
| **_tags_** | _A mapping of tags to assign to the resource_ | _map(string)_ | **_Optional_** | **_{}_** |


---


## _Outputs_

* **_dns\_name_**
* **_id_**
* **_arn_**

---


### _Usage_


_The output variable is able to be accessed through terraform state file using the syntax below:_

```tf
data.terraform_remote_state.<module_name>.<output_variable_name>
```

---

## _Authors_
_Module maintained by Module maintained by the -_ **_Nitin Das_**

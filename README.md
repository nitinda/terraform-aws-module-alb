# _Terraform Module: terraform-module-aws-lb_


## _General_

_This module may be used to create_ **_Application Load Balancer_** _resources in AWS cloud provider......._

---


## _Prerequisites_

_This module needs_ **_Terraform 0.12.19_** _or newer._
_You can download the latest Terraform version from_ [_here_](https://www.terraform.io/downloads.html).

_This module deploys aws services details are in respective feature branches._

---

## _Features_

_Below we are able to check the resources that are being created as part of this module call:_


* **_Application Load Balancer_**



---

## _Usage_

## _Using this repo_

_To use this module, add the following call to your code:_

```tf
module "alb" {
  source = "git::https://github.com/nitinda/terraform-module-aws-lb.git?ref=terraform-12/alb"

  providers = {
    aws = aws.services
  }

  # Tags
  common_tags = merge(var.common_tags, map(
    "Description", "Application Load balancer ",
    "ManagedBy", "Terraform"
  ))

  # ALB
  name            = "demo-alb-grafana"
  internal        = false
  security_groups = [ var.security_group_ids ]
  subnets         = [ var.subnet_ids ]
}

```

---

## _Inputs_

_The variables required in order for the module to be successfully called from the deployment repository are the following:_


|**_Variable_** | **_Description_** | **_Type_** | **_Comments_** |
|:----|:----|-----:|-----:|
| **_name_** | _Creates a unique name_ | _string_ | **_Required_** |
| **_internal_** | _If true, the LB will be internal_ | _bool_ | **_Required_** |
| **_security\_groups_** | _ALB security group_ | _list(string)_ | **_Required_** |
| **_subnets_** | _A list of subnet IDs to attach to the LB_ | _list(string)_ | **_Required_** |
| **_access\_logs_** | _An Access Logs block_ | _any_ | **_Optional (Default - [])_** |
| **_tags_** | _Resources Tags_ | _map(string)_ | **_Required_** |


---


## _Outputs_

* **_dns\_name_**
* **_id_**
* **_arn_**

---


### _Usage_


```
_The output variable is able to be accessed through terraform state file using the syntax below:_

```tf
data.terraform_remote_state.<module_name>.<output_variable_name>
```

---

## _Authors_
_Module maintained by Module maintained by the -_ **_Nitin Das_**
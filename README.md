# Terraform Module Name: terraform-module-lb


## General

This module may be used to create **_Application Load Balancer_** resources in AWS cloud provider..

---


## Prerequisites

This module needs Terraform 0.12.16 or newer.
You can download the latest Terraform version from [here](https://www.terraform.io/downloads.html).

This module deploys aws services details are in respective feature branches.

---

## Features Branches

Below we are able to check the resources that are being created as part of this module call:

From branch : **_terraform-12/alb_**

* **_Application Load Balancer (Terraform 12 supported code)_**



---

## Below are the resources that are launched by this module

* **_Application Load Balancer_**


---

## Usage

## Using this repo

To use this module, add the following call to your code:

```tf
module "alb>" {
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

## Inputs

The variables required in order for the module to be successfully called from the deployment repository are the following:


|**_Variable_** | **_Description_** | **_Type_** | **_Comments_** |
|:----|:----|-----:|-----:|
| **_name_** | _Creates a unique name_ | _string_ | **_Required_** |
| **_internal_** | _If true, the LB will be internal_ | _bool_ | **_Required_** |
| **_security\_groups_** | _ALB security group_ | _list(string)_ | **_Required_** |
| **_subnets_** | _A list of subnet IDs to attach to the LB_ | _list(string)_ | **_Required_** |
| **_access\_logs_** | _An Access Logs block_ | _any_ | **_Optional (Default - [])_** |
| **_tags_** | _Resources Tags_ | _map(string)_ | **_Required_** |




## Outputs

* **_dns\_name_**
* **_id_**
* **_arn_**




### Usage
In order for the variables to be accessed on module level please use the syntax below:

```tf
module.<module_name>.<output_variable_name>
```

If an output variable needs to be exposed on root level in order to be accessed through terraform state file follow the steps below:

- Include the syntax above in the network layer output terraform file.
- Add the code snippet below to the variables/global_variables file.

```tf
data "terraform_remote_state" "<module_name>" {
  backend = "s3"

  config {
    bucket = <bucket_name> (i.e. "s3-webstack-terraform-state")
    key    = <state_file_relative_path> (i.e. "env:/${terraform.workspace}/4_Networking/terraform.tfstate")
    region = <bucket_region> (i.e. "eu-central-1")
  }
}
```

- The output variable is able to be accessed through terraform state file using the syntax below:

```tf
"${data.terraform_remote_state.<module_name>.<output_variable_name>}"
```

## Authors
Module maintained by Module maintained by the - **_Nitin Das_**
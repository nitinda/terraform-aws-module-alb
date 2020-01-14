# Terraform Module Name: terraform-module-lb


## General

_This module may be used to create_ **_Application Load Balancer_** _resources in AWS cloud provider......._

---


## Prerequisites

_This module needs Terraform 0.12.16 or newer._
_You can download the latest Terraform version from_ [_here_](https://www.terraform.io/downloads.html).

_This module deploys aws services details are in respective feature branches._


---


## Features Branches

_Below we are able to check the resources that are being created as part of this module call:_

_From branch :_ **_terraform-11/alb_**

* **_Application Load Balancer_**


_From branch :_ **_terraform-12/alb_**

* **_Application Load Balancer_**


_From branch :_ **_terraform-12/nlb_**

* **_Network Load Balancer_**


---

## Below are the resources that are launched by this module

* **_Load Balancer_**


---

## Usage

## Using this repo

_To use this module, add the following call to your code:_

```tf
module "lb" {
  source = "git::https://github.com/nitinda/terraform-module-aws-lb.git?ref=master"


}
```
---

## Inputs

_The variables required in order for the module to be successfully called from the deployment repository are the following:_


|**_Variable_** | **_Description_** | **_Type_** |
|:----|:----|-----:|


_Details are in respective branch._


## Outputs

* **_dns\_name_**
* **_id_**
* **_arn_**


_Details are in respective branch._


### Usage

_In order for the variables to be accessed on module level please use the syntax below:_

```tf
module.<module_name>.<output_variable_name>
```

_The output variable is able to be accessed through terraform state file using the syntax below:_

```tf
"${data.terraform_remote_state.<module_name>.<output_variable_name>}"
```

## Authors
_Module maintained by Module maintained by the -_ **_Nitin Das_**
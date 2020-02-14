# _Terraform Module: terraform-module-aws-lb_


## _General_

_This module may be used to create_ **_Application Load Balancer_** _resources in AWS cloud provider......._

---


## _Prerequisites_

_This module needs Terraform 0.12.16 or newer._
_You can download the latest Terraform version from_ [_here_](https://www.terraform.io/downloads.html).

_This module deploys aws services details are in respective feature branches._


---


## _Features Branches_

_Below we are able to check the resources that are being created as part of this module call:_

_From branch :_ **_terraform-11/alb_**

* **_Application Load Balancer_**


_From branch :_ **_terraform-12/alb_**

* **_Application Load Balancer_**


_From branch :_ **_terraform-12/nlb_**

* **_Network Load Balancer_**


---

## _Usage_

## _Using this repo_

_To use this module, add the following call to your code:_

```tf
module "lb" {
  source = "git::https://github.com/nitinda/terraform-module-aws-lb.git?ref=master"


}
```
---

## _Inputs_

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


## Authors
_Module maintained by Module maintained by the -_ **_Nitin Das_**
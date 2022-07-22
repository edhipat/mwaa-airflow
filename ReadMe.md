# About
This module creates a Managed Workflow of Apache Airflow (MWAA) instance in AWS.

## Terraform version
There is no Terraform version coded in this module. It has been tested to work with Terraform 1.2.5 and might need 
modifications to work with higher versions.

### Currently preferred Terraform version: 1.2.2 or higher

## Using this module
```terraform
module "mr-airflow-instance" {
  source      = "git@github.com:edhipat/mwaa-airflow.git:x.x.x"
  environment = var.environment
  region      = var.region

  access_key = var.access_key
  secret_key = var.secret_key

  account_id           = var.account_id
  environment_name     = var.environment_name
  airflow_version      = var.airflow_version
  resources_bucket_arn = var.resources_bucket_arn
  dag_s3_path          = var.dag_s3_path
  vpc_id               = var.vpc_id
  private_subnet_ids   = data.aws_subnets.aws_private_subnet_ids.ids
  default_tags         = var.default_tags
}
```
## Outputs
This module provides following outputs:
* MWAA environment ARN (mwaa_arn)
* MWAA webserver URL (webserver_url)

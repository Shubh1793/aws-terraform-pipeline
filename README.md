# AWS_TERRAFORM_PIPELINE
## This terraform code include All-In-One for ECS & Codepipeline settings even VPC infra.##

#AWS ECS : ECS Cluster(EC2 type), ECS Service, ESC Task definition#
#AWS Codepipeline : AWS Codecommit, AWS Codebuild#
#AWS EC2 : ECS Container Instances, ALB, ALB Target groups, Auto scaling groups, Security groups#
#AWS VPC : VPC, Subnets, Routing tables, Internet gateway, Nat gateway#

# Pre-requisites
Setup aws credentials (https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-quickstart.html)
To Build, change, and destroy AWS infrastructure using Terraform (https://learn.hashicorp.com/collections/terraform/aws-get-started)

# Terraform Basics

### 'terraform init'
Prepares the working directory so Terraform can run the configuration.

### 'terraform plan'
Creates an execution plan, lets you preview the changes that Terraform plans to make to your infrastructure
lets you preview any changes before you apply them.

### 'terraform apply'
Executes the changes defined by your Terraform configuration to create, update, or destroy resources.

# Terraform Instructions

First make sure AWS CLI is installed and have configured authorization properly After that: Initialize Terraform from the terraform project folder
```
cd state_bucket
terraform init
```
Here, terraform providers are installed and resource like S3 is intialized from main.tf file to store its state.
```
terraform plan
```
Resource that will be created are listed and if there is any change in present infrastructure get listed and any require not met will be shown as error.

```
terraform apply
```
It actually creates the resource i.e S3 in this phase only.

```
cd pipeline
terraform init
```
After initialization done, changes variable values you will find in variables.tf
```
vi variables.tf
```
After done with changing variables/parameters, and all set, it's time to do a DRY RUN to see/verify what resources this will create

```
terraform plan
```
Verify once and if all seems well, it's time to create actual remote infratucture in AWS

```
terraform apply
```





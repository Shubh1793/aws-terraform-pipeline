
variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "us-east-1"
}

# Example of a list variable
variable "availability_zones" {
  default = ["us-east-1a", "us-east-1b"]
}

variable "cidr_block" {
  default = "10.1.0.0/16"
}

variable "env" {
  description = "Targeted Deployment environment"
  default     = "Dev"
}

variable "python_project_repository_branch" {
  description = "Python Project Repository branch to connect to"
  default     = "master"
}

variable "artifacts_bucket_name" {
  description = "S3 Bucket for storing artifacts"
  default     = "shubham-cicd-artifacts-bucket"
}

variable "container_port" {
  description = "python app container port"
  default     = 5002
}

variable "ACCOUNT_ID" {
  default = 194865504633
}

variable "vpc_default_id" {
  default = "vpc-105c3c6a"
}

variable "container_name" {
  default = "python-app"
}

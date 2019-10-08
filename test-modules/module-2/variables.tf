variable "scalr_aws_access_key" {
  description = "AWS Access Key (sensitive)"
}

variable "scalr_aws_secret_key" {
  description = "AWS Secret Key (sensitive)"
}

variable "region" {
  description = "AWS region to launch the VM into"
  default     = "us-east-1"
}

variable "instance_type" {
  default = "t2.small"
}

variable "subnet_id" {
  description = "VPC Subnet into which to launch your instance"
  default     = "subnet-3d82d101"
}

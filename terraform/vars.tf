terraform {
  backend "s3" {
    bucket = "poc-terraform" # ! REPLACE WITH YOUR TERRAFORM BACKEND BUCKET
    key    = "terraform.tfstate"
    region = "us-east-2"
  }
}
variable "S3_BACKEND_BUCKET" {
  default = "poc-terraform" # ! REPLACE WITH YOUR TERRAFORM BACKEND BUCKET
}

variable "S3_BUCKET_REGION" {
  type    = "string"
  default = "us-east-2"
}

variable "AWS_REGION" {
  type    = "string"
  default = "us-east-2"
}

variable "TAG_ENV" {
  default = "dev"
}

variable "ENV" {
  default = "PROD"
}

variable "CIDR_PRIVATE" {
  default = "10.0.1.0/24,10.0.2.0/24"
}

variable "CIDR_PUBLIC" {
  default = "10.0.101.0/24,10.0.102.0/24"
}

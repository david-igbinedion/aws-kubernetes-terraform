variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "eks_name" {
    default = "zulu-eks"
}

variable "vpc_name" {
    default = "zulu-vpc"
}
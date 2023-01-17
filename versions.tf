terraform {
  required_providers {
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = ">= 1.14.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.6.0"
    }
  }

  required_version = "~> 1.2.0"

   backend "s3" {
       bucket = "zulu-tfstate2"
       key    = "terraform.tfstate"
       region = "us-east-1"
   }

}
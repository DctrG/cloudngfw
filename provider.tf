terraform {
  required_providers {
    cloudngfwaws = {
      source  = "paloaltonetworks/cloudngfwaws"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.29"
    }
  }
}

provider "cloudngfwaws" {
    host = "api.us-west-2.aws.cloudngfw.paloaltonetworks.com"
    region = var.region
    lfa_arn = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/CloudNGFWRole"
    lra_arn = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/CloudNGFWRole"
    }
    
provider "aws"{
    region = "us-west-2"
}
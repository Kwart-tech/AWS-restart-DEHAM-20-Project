terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.5.0"
}

provider "aws" {
  region = var.region
}

# Bring in all the modular pieces
module "vpc" {
  source = "./vpc.tf"
}

module "security" {
  source = "./security_groups.tf"
}

module "ec2" {
  source = "./ec2.tf"
}

module "alb" {
  source = "./alb.tf"
}

module "rds" {
  source = "./rds.tf"
}

module "s3" {
  source = "./s3.tf"
}

module "cloudfront" {
  source = "./cloudfront.tf"
}

module "route53" {
  source = "./route53.tf"
}

module "waf" {
  source = "./waf.tf"
}

module "acm" {
  source = "./acm.tf"
}

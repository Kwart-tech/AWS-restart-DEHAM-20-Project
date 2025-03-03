variable "region" {
  description = "AWS region"
  default     = "us-west-2"
}

variable "key_name" {
  description = "Key pair for EC2 instances"
}

variable "db_username" {
  description = "Database username"
}

variable "db_password" {
  description = "Database password"
  sensitive   = true
}

variable "domain_name" {
  description = "Domain name for the WordPress site"
}

variable "subdomain" {
  description = "Subdomain for the WordPress site (like www)"
}

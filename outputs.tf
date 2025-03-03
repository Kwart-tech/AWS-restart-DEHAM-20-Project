output "alb_dns_name" {
  description = "Application Load Balancer DNS"
  value       = module.alb.alb_dns_name
}

output "cloudfront_url" {
  description = "CloudFront distribution URL"
  value       = module.cloudfront.cloudfront_url
}

output "rds_endpoint" {
  description = "RDS database endpoint"
  value       = module.rds.rds_endpoint
}

output "s3_bucket" {
  description = "S3 media storage bucket"
  value       = module.s3.s3_bucket_name
}

output "route53_zone_id" {
  description = "Route 53 hosted zone ID"
  value       = module.route53.zone_id
}

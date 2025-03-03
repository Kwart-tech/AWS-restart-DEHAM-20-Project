resource "aws_acm_certificate" "wordpress_cert" {
  domain_name       = "mywordpressdomain.com"
  validation_method = "DNS"

  subject_alternative_names = [
    "www.mywordpressdomain.com"
  ]

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_route53_record" "cert_validation" {
  for_each = {
    for dvo in aws_acm_certificate.wordpress_cert.domain_validation_options : dvo.domain_name => {
      name   = dvo.resource_record_name
      record = dvo.resource_record_value
      type   = dvo.resource_record_type
    }
  }

  zone_id = aws_route53_zone.wordpress_zone.zone_id
  name    = each.value.name
  type    = each.value.type
  records = [each.value.record]
  ttl     = 60
}

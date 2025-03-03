resource "aws_s3_bucket" "wordpress_media" {
  bucket = "wordpress-media-storage"
  acl    = "private"

  versioning {
    enabled = true
  }

  lifecycle_rule {
    id      = "media-backup"
    enabled = true

    expiration {
      days = 365
    }
  }
}

resource "aws_s3_bucket_policy" "media_policy" {
  bucket = aws_s3_bucket.wordpress_media.id

  policy = jsonencode({
    Statement = [
      {
        Action = "s3:*"
        Effect = "Allow"
        Resource = "${aws_s3_bucket.wordpress_media.arn}/*"
        Principal = {
          Service = "cloudfront.amazonaws.com"
        }
      }
    ]
  })
}

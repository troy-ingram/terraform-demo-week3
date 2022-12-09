resource "aws_s3_bucket" "s3bucket" {
  bucket              = var.bucket_name
  object_lock_enabled = var.object_lock_enabled

  tags = {
    Environment = var.env_tag
  }
}
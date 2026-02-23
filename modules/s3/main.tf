resource "aws_s3_bucket" "bucket" {
  bucket = var.env
  region = var.region
  bucket_prefix = var.bucket_prefix

  versioning {
    enabled = true
  }

  tags = {
    Name = "${var.env}_bucket"
  }
}
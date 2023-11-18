resource "aws_s3_bucket" "this" {
  bucket_prefix = "monvas-karsur-"
}

resource "aws_s3_bucket_ownership_controls" "this" {
  count = var.enable_public_access ? 1 : 0
  bucket = aws_s3_bucket.this.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_public_access_block" "this" {
  count = var.enable_public_access ? 1 : 0
  bucket = aws_s3_bucket.this.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_acl" "this" {
  count = var.enable_public_access ? 1 : 0
  depends_on = [
    aws_s3_bucket_ownership_controls.this,
    aws_s3_bucket_public_access_block.this,
  ]

  bucket = aws_s3_bucket.this.id
  acl    = "public-read"
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}
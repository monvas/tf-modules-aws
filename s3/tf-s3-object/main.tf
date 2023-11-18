
resource "aws_s3_object" "this" {
  for_each = toset(var.object_files)
  key    = each.value
  bucket = var.bucket_name
  source = "${var.local_path}/${each.value}"
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}
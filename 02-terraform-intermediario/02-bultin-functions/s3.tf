resource "random_pet" "bucket" {
  length = 3
}

resource "aws_s3_bucket" "this" {
  bucket = "${random_pet.bucket.id}-${var.env}"
  tags = local.common_tags
}


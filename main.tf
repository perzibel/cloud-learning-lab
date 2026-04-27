resource "random_id" "suffix" {
  byte_length = 4
}

resource "aws_s3_bucket" "lab_bucket" {
  bucket = "${var.project_name}-${random_id.suffix.hex}"

  tags = {
    Project     = var.project_name
    Environment = "dev"
    ManagedBy   = "terraform"
  }
}

resource "aws_s3_bucket_public_access_block" "lab_bucket" {
  bucket = aws_s3_bucket.lab_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
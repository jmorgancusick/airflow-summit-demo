resource "aws_s3_bucket" "example" {
  bucket = var.bucket_name
}

resource "aws_s3_bucket_public_access_block" "public_access_block" {
  bucket = aws_s3_bucket.example.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_ownership_controls" "example" {
  bucket = aws_s3_bucket.example.id

  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_policy" "allow_this_account_admins" {
  depends_on = [aws_s3_bucket_public_access_block.public_access_block]

  bucket = aws_s3_bucket.example.id
  policy = data.aws_iam_policy_document.this_accounts_admins.json
}
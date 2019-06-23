resource "aws_kms_key" "state_key" {
  description = "This key is used to encrypt bucket objects"
  deletion_window_in_days = var.deletion_window_in_days
}

resource "aws_s3_bucket" "remote_state" {
  bucket = var.bucket_name
  acl = "private"
  region = var.region
  force_destroy = var.force_destroy

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }

  tags = {
    Name = "S3 Remote Terraform State Store"
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = aws_kms_key.state_key.arn
        sse_algorithm = "aws:kms"
      }
    }
  }
}

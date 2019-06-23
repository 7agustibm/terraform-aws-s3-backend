output "bucket_arn" {
  value = aws_s3_bucket.remote_state.arn
  description = "`arn` exported from `aws_s3_bucket`"
}

output "bucket_id" {
  value = aws_s3_bucket.remote_state.id
  description = "`id` exported from `aws_s3_bucket`"
}

output "region" {
  value = aws_s3_bucket.remote_state.region
  description = "`region` exported from `aws_s3_bucket`"
}

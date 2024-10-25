output "s3_bucket_policy" {
  value = aws_s3_bucket_policy.encryptionPolicy.id
}

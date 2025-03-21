output "backend_ec2_public_ip" {
  value       = aws_instance.employee_backend.public_ip
  description = "Public IP of the EC2 instance hosting the backend."
}

output "rds_endpoint" {
  value       = aws_db_instance.employee_rds.endpoint
  description = "RDS database endpoint."
}

output "s3_bucket_name" {
  value       = aws_s3_bucket.employee_docs.bucket
  description = "S3 bucket name for storing employee documents."
}
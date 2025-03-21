resource "aws_s3_bucket" "employee_docs" {
  bucket = "employee-management-docus"

  tags = {
    Name        = "EmployeeDocuments"
    Environment = "Production"
  }
}

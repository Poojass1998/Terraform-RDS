resource "aws_security_group" "db_sg" {
  name        = "employee-db-sg"
  description = "Allow MySQL access from EC2"
   vpc_id      = aws_vpc.employee_vpc.id
   
  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Restrict this in production!
  }

  tags = {
    Name = "EmployeeDBSecurityGroup"
  }
}
resource "aws_security_group" "ec2_sg" {
  name        = "employee-ec2-sg"
  description = "Allow HTTP and SSH access"
  vpc_id      = aws_vpc.employee_vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Allow SSH (Restrict in production)
  }

  ingress {
    from_port   = 5000
    to_port     = 5000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Allow backend access
  }

  tags = {
    Name = "EmployeeEC2SecurityGroup"
  }
}
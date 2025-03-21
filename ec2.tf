resource "aws_instance" "employee_backend" {
  ami           = "ami-014e2b14bdb83e8ca"
  instance_type = "t2.micro"
  key_name      = "aws.pem"
  subnet_id     = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]
  iam_instance_profile   = aws_iam_instance_profile.employee_instance_profile.name

  user_data = <<-EOF
              #!/bin/bash
              sudo yum update -y
              sudo yum install -y nodejs npm mysql
              cd /home/ec2-user
              git clone https://github.com/Poojass1998/Terraform-RDS.git
              cd Terraform-RDS
              npm install
              nohup node server.js > app.log 2>&1 &
              EOF

  tags = {
    Name        = "EmployeeBackendServer"
    Environment = "Production"
  }
}
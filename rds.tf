resource "aws_db_instance" "employee_rds" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine              = "mysql"  # Change to "postgres" if needed
  engine_version      = "8.0"   # Update based on your requirement
  instance_class      = "db.t3.micro"
  identifier         = "employee-db"
  username          = "admin"
  password          = "poojards"
  publicly_accessible = false
  skip_final_snapshot = true
  multi_az = false
  
  vpc_security_group_ids = [aws_security_group.db_sg.id]
  db_subnet_group_name   = aws_db_subnet_group.employee_db_subnet.name
  
  tags = {
    Name        = "EmployeeRDS"
    Environment = "Production"
  }
}
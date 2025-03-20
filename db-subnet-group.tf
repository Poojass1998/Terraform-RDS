resource "aws_db_subnet_group" "employee_db_subnet" {
  name       = "employee-db-subnet"
  subnet_ids = [aws_subnet.private_subnet.id]

  tags = {
    Name = "EmployeeDBSubnetGroup"
  }
}
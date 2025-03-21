resource "aws_db_subnet_group" "employee_db_subnet" {
  name       = "employee-db-subnet"
  subnet_ids = [aws_subnet.private_subnet_1.id, aws_subnet.private_subnet_2.id]

  tags = {
    Name = "employee-db-subnet-group"
  }
}

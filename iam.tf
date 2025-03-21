resource "aws_iam_role" "employee_role" {
  name = "employee-ec2-role"

  assume_role_policy = <<EOF
  {
    "Version": "2012-10-17",
    "Statement": [
      {
        "Action": "sts:AssumeRole",
        "Principal": {
          "Service": "ec2.amazonaws.com"
        },
        "Effect": "Allow",
        "Sid": ""
      }
    ]
  }
  EOF
}

resource "aws_iam_instance_profile" "employee_instance_profile" {
  name = "employee-instance-profile"
  role = aws_iam_role.employee_role.name
}
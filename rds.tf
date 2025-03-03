resource "aws_db_instance" "wordpress_db" {
  allocated_storage = 20
  engine = "mysql"
  engine_version = "8.0"
  instance_class = "db.t3.micro"
  multi_az = true
  username = "admin"
  password = "yourpassword"
  vpc_security_group_ids = [aws_security_group.rds_sg.id]
  db_subnet_group_name = aws_db_subnet_group.wordpress_subnet_group.name
}

resource "aws_db_subnet_group" "wordpress_subnet_group" {
  name = "wordpress-subnet-group"
  subnet_ids = [aws_subnet.private_subnet_1.id, aws_subnet.private_subnet_2.id]
}

resource "aws_launch_template" "wordpress_template" {
  name = "wordpress-launch-template"
  image_id = "ami-12345678"
  instance_type = "t2.micro"
  key_name = "your-key-pair"
  network_interfaces {
    security_groups = [aws_security_group.ec2_sg.id]
    associate_public_ip_address = false
  }
}

resource "aws_autoscaling_group" "wordpress_asg" {
  desired_capacity = 2
  max_size = 4
  min_size = 2
  vpc_zone_identifier = [aws_subnet.private_subnet_1.id, aws_subnet.private_subnet_2.id]
  launch_template {
    id = aws_launch_template.wordpress_template.id
    version = "$Latest"
  }
}

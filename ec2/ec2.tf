resource "aws_instance" "MyFirstEc2Instance_to_test_tf" {
	ami = "ami-0b898040803850657"
	instance_type = "t2.micro"
	tags = {
		Name = "Start_from_tf"
	}
	key_name = "tf-test"
	user_data = <<-EOF
					#!/bin/bash
					yum update -y
					yum install -y httpd
					systemctl start httpd.service
					systemctl enable httpd.service
					echo "Hi! Welcom to Terraform, I am $(hostname -f)" > /var/www/html/index.html
					EOF
}
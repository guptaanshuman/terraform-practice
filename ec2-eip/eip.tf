resource "aws_eip" "eip_from_tf" {
	instance = aws_instance.MyFirstEc2withEIP_to_test_tf.id
	vpc = true
	tags = {
		Name = "EIP_Start_from_tf"
	}
}


# To know the value of elastic IP
output "my_eip_adress" {
	value = aws_eip.eip_from_tf.public_ip
}
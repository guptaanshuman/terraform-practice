resource "aws_instance" "import_ec2_test" {
	ami = "ami-0b898040803850657"
	instance_type = "t2.nano"
	tags = {
		Name = "import_ec2_test"
	}
	key_name = "tf-test"
}


# Import use to fetch the state of aws resources if any resource is launched manually by user. So that use below command to import state
# terraform import aws_instance.import_ec2_test_manual i-088eca9b617799efe

resource "aws_instance" "import_ec2_test_manual" {
	ami = "ami-0ac80df6eff0e70b5"
	instance_type = "t2.nano"
	key_name = "tf-test"
	tags = {
		Name = "import_ec2_test_manual_done"
	}
}
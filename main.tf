provider "aws" {
  region                   = "eu-west-1"
  shared_credentials_file  = "/home/ben/.aws/credentials"
}


data "aws_ami" "list" {
	most_recent = true
	filter {
		name = "owner-alias"
		values = ["amazon"]
	}	
}

output "name" {
        value = "${data.aws_ami.list.name}"
}

output "ami" {
	value = "${data.aws_ami.list.image_id}"
}

output "description" {
	value = "${data.aws_ami.list.description}"
}


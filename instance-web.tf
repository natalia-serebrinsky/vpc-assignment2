resource "aws_instance" "web"{
	count = var.web
  instance_type = "t2.micro"
	ami = var.ami
	root_block_device {
    	encrypted   = false
    	volume_type = "gp2"
    	volume_size = var.root_disk_size
  	}
   	user_data = "${file("user-data-nginx.sh")}"
  	tags = {
      Name = "Whiskey ${count.index}"
    	Owner = "whiskey"
  	}
    subnet_id = module.vpc_module.public_subnets_id[count.index]
}
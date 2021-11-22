resource "aws_instance" "db"{
  count = var.db
  instance_type = "t2.micro"
  ami = var.ami
  root_block_device {
      encrypted   = false
      volume_type = "gp2"
      volume_size = var.root_disk_size
    }
    subnet_id = module.vpc_module.private_subnets_id[count.index]
    tags = {
        Name = "DB instance ${count.index}"
    }
}
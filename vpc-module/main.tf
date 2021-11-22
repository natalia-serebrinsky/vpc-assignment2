resource "aws_vpc" "main"{
	cidr_block = var.vpc_cidr_block
	instance_tenancy = "default"
}

resource "aws_subnet" "public_subnet"{
	count = var.subnets
  vpc_id = aws_vpc.main.id
	cidr_block = var.cidr_block_public[count.index]
  availability_zone = var.availability_zone[count.index]
  tags = {
      Name = "Public subnet ${count.index}"
  }
}

resource "aws_subnet" "private_subnet"{
  count = var.subnets
  vpc_id = aws_vpc.main.id
  cidr_block = var.cidr_block_private[count.index]
  availability_zone = var.availability_zone[count.index]
  tags = {
      Name = "Private subnet ${count.index}"
  }
}
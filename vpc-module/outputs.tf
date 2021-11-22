output "public_subnets_id" {
  value = aws_subnet.public_subnet.*.id
}

output "private_subnets_id" {
  value = aws_subnet.private_subnet.*.id
}

output "vpc_id" {
  value = aws_vpc.main.id
}

output "vpc_cidr" {
  value = aws_vpc.main.cidr_block
}

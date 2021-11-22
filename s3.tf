resource "aws_s3_bucket" "logs_to_s3"{
  bucket   = "access-logs-tf-opschool-natalia"
  acl      = "private"
  tags = {
    Name = "opsschool-nginx-access-log"
  }

}
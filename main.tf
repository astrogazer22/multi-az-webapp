resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
}

resource "aws_instance" "instance_1" {
  ami                  = var.ami
  instance_type        = var.instance_type
  subnet_id            = aws_subnet.pub_a.id
  security_groups      = [aws_security_group.sg.id]
  user_data            = file("nginx.sh")
  iam_instance_profile = aws_iam_instance_profile.ec2_profile.role

}
resource "aws_instance" "instance_2" {
  ami                  = var.ami
  instance_type        = var.instance_type
  subnet_id            = aws_subnet.pub_b.id
  security_groups      = [aws_security_group.sg.id]
  user_data            = file("nginx.sh")
  iam_instance_profile = aws_iam_instance_profile.ec2_profile.role

}

resource "aws_db_instance" "app_db" {
  identifier             = var.db_identifier
  engine                 = var.db_engine
  instance_class         = var.db_instance_class
  allocated_storage      = 20
  username               = "admin"
  password               = "admin"
  db_subnet_group_name   = aws_db_subnet_group.default.name
  vpc_security_group_ids = [aws_security_group.rds.id]
  multi_az               = false
  publicly_accessible    = false
  skip_final_snapshot    = true
}

resource "aws_s3_bucket" "static_files" {
  bucket        = var.aws_s3_bucket
  force_destroy = true
}


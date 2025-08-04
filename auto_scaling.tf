resource "aws_launch_template" "az_1_template" {
  name_prefix   = "az_1_template"
  image_id      = var.ami
  instance_type = var.instance_type
}

resource "aws_autoscaling_group" "az_1_group" {
  availability_zones = [var.availability_zones_1]
  desired_capacity   = var.desired_capacity
  max_size           = var.max_size
  min_size           = var.min_size

  launch_template {
    id = aws_launch_template.az_1_template.id
  }
}


resource "aws_launch_template" "az_2_template" {
  name_prefix   = "az_2_template"
  image_id      = var.ami
  instance_type = var.instance_type
}

resource "aws_autoscaling_group" "az_2_group" {
  availability_zones = [var.availability_zones_2]
  desired_capacity   = var.desired_capacity
  max_size           = var.max_size
  min_size           = var.min_size

  launch_template {
    id = aws_launch_template.az_2_template.id
  }
}
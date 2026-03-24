data "aws_ami" "redhat" {
  most_recent = true

  filter {
    name   = "Redhat-9-DevOps-Practice"
    values = ["Redhat-9-DevOps-Practice"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["973714476881"] # Canonical
}

data "aws_ssm_parameter" "public_subnet_ids" {
    name = "${var.project}/${var.environment}/public_subnet_ids"
}

data "aws_ssm_parameter" "sg_id" {
    name = "/${var.project}/${var.environment}/${var.component}_sg_id"
}
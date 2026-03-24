data "aws_ssm_paramter" "vpc_id" {
    value = "${var.project}/${var.environment}/vpc_id"
}
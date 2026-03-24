locals {
     ami_id = data.aws_ami.redhat.id
     common_tags = {
        project = var.project
        environment = var.environment
        component = var.component
    }
    subnet_id = split(",", data.aws_ssm_parameter.public_subnet_ids.value)[0]
    bastion_sg_id = data.aws_ssm_parameter.sg_id.value
    comman_name_suffix = "${var.project}-${var.component}-${var.environment}" #roboshop-catalogue-dev
}
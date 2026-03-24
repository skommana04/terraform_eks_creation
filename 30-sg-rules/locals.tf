locals {

     common_tags = {
        project = var.project
        environment = var.environment
        component = var.component
    }
    bastion_sg_id = data.aws_ssm_parameter.sg_id.value
    mongodb_sg_id = data.aws_ssm_parameter.mongodb_sg_id.value
    rabbitmq_sg_id = data.aws_ssm_parameter.rabbitmq_sg_id.value
    redis_sg_id = data.aws_ssm_parameter.redis_sg_id.value
    mysql_sg_id = data.aws_ssm_parameter.mysql_sg_id.value
    comman_name_suffix = "${var.project}-${var.component}-${var.environment}" #roboshop-catalogue-dev
}
resource "aws_ssm_parameter" "vpc_id" {
    name = "/${var.project}/${var.environment}/vpc_id"
    type = "String"
    value = module.vpc.vpc_id
}
/*
In Terraform, module.vpc.public_subnet_ids is a list. AWS Systems Manager (SSM) expects a StringList to be a series of values separated by commas, all contained within one string.

The join function is the "bridge" that fixes this:

Input: ["subnet-123", "subnet-456"] (List)

Action: join(",", ...)

Output: "subnet-123,subnet-456" (String)
*/
resource "aws_ssm_parameter" "public_subnet_ids" {
    name = "/${var.project}/${var.environment}/public_subnet_ids"
    type = "StringList"
    value = join(",",module.vpc.public_subnet_ids)
}

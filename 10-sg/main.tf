module "sg" {
  count = length(var.sg_names)
  source = "git::https://github.com/skommana04/terraform_aws_sg.git?ref=main"

  sg_name = var.sg_names[count.index]
  vpc_id = local.vpc_id
  project = var.project
  environment = var.environment
  component = var.component

}

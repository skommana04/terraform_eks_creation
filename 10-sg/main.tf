module "sg" {
  source = "git::https://github.com/skommana04/terraform_aws_sg.git?ref=main"
  vpc_id = var.vpc_id

}

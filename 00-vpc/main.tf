module "vpc" {
  source = "git::https://github.com/skommana04/terraform_aws_vpc.git?ref=main"
  cidr_block = var.cidr_block
  public_cidr_blocks = var.public_cidr_blocks
  private_cidr_blocks = var.private_cidr_blocks
  database_cidr_blocks = var.database_cidr_blocks
  vpc_tags = var.vpc_tags
}

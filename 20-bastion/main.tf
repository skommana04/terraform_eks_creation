
resource "aws_instance" "example" {
  ami           = local.ami_id
  instance_type = "t3.micro"
  vpc_security_group_ids = [local.bastion_sg_id]
  subnet_id = local.subnet_id
  root_block_device {
    volume_size = 50
    volume_type = "gp3"
    delete_on_termination = true
    
  }
  user_data = file(bastion.sh)


    tags = merge(
        local.common_tags,
        {
        Name = "${local.comman_name_suffix}-bastion"
        }
   )
}


resource "aws_instance" "practical-k8s-env" {
  ami           = var.VM01_AMI_ID
  instance_type = "t3.xlarge"

   root_block_device {
     volume_type           = "gp2"
     volume_size           = "20"
     delete_on_termination = "true"
   }

  # the VPC subnet
  subnet_id = module.vpc.public_subnets[0]

  # the security group
  vpc_security_group_ids = [aws_security_group.test-env.id]

  # the public SSH key
  key_name = "deployer-key"

  tags = {
      Name      = "Practical K8S Lab Env"
      env       = "test"
  }


}

module "s3" {
  source = "./s3_child_module"

  bucket_name         = "mynewbucket12052022"
  object_lock_enabled = false
  env_tag             = "Dev"
}

module "ec2" {
  source = "./ec2_child_module"
  
  ami = "ami-0b0dcb5067f052a63"
  instance_type = "t2.micro"
  vpc_security_group_ids = [module.sg.vpc_security_group_ids]
}

module "sg" {
  source = "./sg_child_module"
}

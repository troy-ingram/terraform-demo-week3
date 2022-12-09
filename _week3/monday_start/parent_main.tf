module "s3" {
  source = "./s3_child_module"

  bucket_name         = "mynewbucket12052022"
  object_lock_enabled = false
  env_tag             = "Dev"
}

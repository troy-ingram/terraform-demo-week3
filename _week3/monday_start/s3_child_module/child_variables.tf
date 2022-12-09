variable "bucket_name" {
  type    = string
  default = "mydefaultbucket12012022"
}

variable "object_lock_enabled" {
  type    = bool
  default = false
}

variable "env_tag" {
  type    = string
  default = "Dev"
}
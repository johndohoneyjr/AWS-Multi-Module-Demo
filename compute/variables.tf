variable "key_name" {
  default="tf_key"
}

variable "subnet_ips" {
    type = "list"
}
variable "instance_count" {
  default=2
}
variable "instance_type" {}

variable "security_group" {}

variable "subnets" {
 type = "list"
}

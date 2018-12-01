variable "aws_region" {}

# ------ Compute -------
variable "key_name" {}
variable "server_instance_type" {}
variable "instance_count" {
  default = 1
}

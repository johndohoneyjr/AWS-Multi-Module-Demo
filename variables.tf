variable "aws_region" {}

# -- Storage ______
variable "project_name" {}

# ----- Network -------
variable "accessip" {}
variable "vpc_cidr" {}
variable "public_cidrs" {
  type = "list"
}

# ------ Computer -------

variable "key_name" {}

#variable "public_key_path" {}

variable "server_instance_type" {}

variable "instance_count" {
  default = 2
}



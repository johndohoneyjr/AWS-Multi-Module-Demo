provider "aws" {
    region="${var.aws_region}"
}

data "terraform_remote_state" "networking" {
  backend = "remote"

  config = {
    organization = "johndohoneyjr"

    workspaces = {
      name = "networking-partition"
    }
  }
}

module "compute" {
    source = "./compute"
    instance_count = "${var.instance_count}"
    key_name = "${var.key_name}"
    instance_type = "${var.server_instance_type}"
    subnets = "${data.terraform_remote_state.networking.public_subnets}"
    security_group = "${data.terraform_remote_state.networking.public_sg}"
    subnet_ips = "${data.terraform_remote_state.networking.subnet_ips}"
}

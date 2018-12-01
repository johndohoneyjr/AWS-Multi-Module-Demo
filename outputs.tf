# root/outputs.tf


output "public-ip-address" {
    value = "${module.compute.public-ip}"
}

## -- compute/outputs

output "public-ip" {
    value = "${aws_instance.tf_server.*.public_ip}" 
}
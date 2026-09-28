output "instance_public_ip" {
  value = aws_instance.docker_box.public_ip
}

output "ssh_command" {
  value = "ssh -i ~/.ssh/docker-practice-key ubuntu@${aws_instance.docker_box.public_ip}"
}

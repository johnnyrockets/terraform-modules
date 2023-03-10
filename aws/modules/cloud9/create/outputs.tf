data "aws_instance" "cloud9_instance" {
  filter {
    name = "tag:aws:cloud9:environment"
    values = [
    aws_cloud9_environment_ec2.c9.id]
  }
}

output "cloud9_url" {
  value = "https://${data.aws_region.current.name}.console.aws.amazon.com/cloud9/ide/${aws_cloud9_environment_ec2.c9.id}"
}

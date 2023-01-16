resource "aws_cloud9_environment_ec2" "c9" {
  instance_type = var.instance_type
  name          = var.name
  subnet_id     = var.subnet_id
}

resource "aws_cloud9_environment_membership" "test" {
  environment_id = aws_cloud9_environment_ec2.c9.id
  permissions    = "read-write"
  user_arn       = var.iam_user
}

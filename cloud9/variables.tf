variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "The instance type to use for the c9 instance"
}

variable "name" {
  type        = string
  description = "The name of the c9 instance"
}

variable "subnet_id" {
  type        = string
  description = "The subnet id to deploy into"
  default     = null
}

variable "iam_user" {
  type        = string
  description = "The arn of the user to grant access to"
}

variable "name" {
  type        = string
  description = "[REQUIRED] The name of the c9 instance"
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "[OPTIONAL] The instance type to use for the c9 instance"
}

variable "subnet_id" {
  type        = string
  description = "[OPTIONAL] The subnet id to deploy into"
  default     = null
}

variable "iam_user" {
  type        = string
  description = "[OPTIONAL] The arn of the user to grant access to"
  default     = null
}

variable "description" {
  description = "[OPTIONAL] The description of the environment."
  default     = "A terraform generated cloud9 environment"
}

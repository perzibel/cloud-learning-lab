variable "aws_region" {
  description = "AWS region to deploy resources into"
  type        = string
  default     = "eu-north-1"
}

variable "project_name" {
  description = "Project name used for resource naming"
  type        = string
  default     = "cloud-learning-lab"
}
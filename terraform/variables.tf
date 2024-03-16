variable "region" {
  description = "The AWS region to launch the resources."
  type        = string
  default     = "us-east-1"

}

variable "cidr" {
  description = "The CIDR block for the VPC."
  type        = string
  default     = "10.10.0.0/16"
  
}
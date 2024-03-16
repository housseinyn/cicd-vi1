variable "instance_type"  {
  description = "The type of EC2 instance to launch"
  type        = string
  default     = "t2.micro"
  
}
variable "instance_type_db"  {
  description = "The type of EC2 instance to launch"
  type        = string
  default     = "t2.micro"
  
}


variable "ami" {
  description = "The AMI to use for the EC2 instance"
  type        = string
  default     = "ami-0c55b159cbfafe1f0"
  
}
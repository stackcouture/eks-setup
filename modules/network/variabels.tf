# Stack Name
variable "cluster_name" {
  type = string
}

variable "vpc_cidr" {
  type        = string
  description = "VPC CIDR Block"
}

variable "azs" {
  type = list(string)
}

# # CIDR of public subet in AZ1 
# variable "public_subnet_az1_cidr" {
#   type    = string
#   description = "Public Subnet1 CIDR Block"
# }

# # CIDR of public subet in AZ2
# variable "public_subnet_az2_cidr" {
#   type    = string
#   description = "Public Subnet2 CIDR Block"
# }
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

variable "ssh_key_name" {
  type        = string
  description = "SSH Key name"
}

variable "cluster_version" {
  type        = string
  description = "Cluster Version"
}
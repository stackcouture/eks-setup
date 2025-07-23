variable "cluster_name" {
  type        = string
  description = "Cluster Name"
}

variable "subnet_ids" {
  type        = list(string)
  description = "Subnet IDs"
}

variable "cluster_sg_id" {
  type        = string
  description = "Cluster SG Id"
}

variable "node_sg_id" {
  type        = string
  description = "Node SG Id"
}

variable "cluster_role_arn" {
  type        = string
  description = "Cluster Role ARN"
}

variable "node_role_arn" {
  type        = string
  description = "Node Role ARN"
}

variable "ssh_key_name" {
  type        = string
  description = "SSH Key"
}

variable "cluster_version" {
  type        = string
  description = "Cluster Version"
}
output "vpc_id" {
  value = aws_vpc.eks_vpc.id
}

# output "subnet_ids" {
#   value = [for subnet in aws_subnet.subnet : subnet.id]
# }

output "subnet_ids" {
  value = aws_subnet.subnet[*].id
}
# EKS Setup with Terraform

This repository provisions an **Amazon EKS cluster** using Terraform.  
The setup follows a **modular approach** with separate modules for networking, IAM, security groups, and the EKS cluster itself.

---

## Features
- VPC creation with public subnets across multiple AZs
- Internet Gateway + Route Tables
- Security Groups for EKS cluster & worker nodes
- IAM roles and policies for EKS & node groups
- EKS cluster with managed node group
- Configurable via `terraform.tfvars`

---

## Prerequisites
Before running, ensure you have:
- [Terraform](https://developer.hashicorp.com/terraform/downloads) v1.5+
- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)          
   configured with proper credentials
- An **AWS Key Pair** (EC2) created and available in your region
- AWS Configure with credentials 

---

## Configuration

Before applying the Terraform code, update the `terraform.tfvars` file with your environment-specific values:

```hcl
cluster_name     = "eks-cluster"          # Name of the EKS cluster
vpc_cidr         = "192.168.10.0/24"     # CIDR block for the VPC
azs              = ["ap-south-1a", "ap-south-1b"] # Availability Zones for the cluster
ssh_key_name     = "cluster-key"          # Name of the EC2 SSH key pair
cluster_version  = "1.29"                 # Kubernetes version for the EKS cluster
```
---


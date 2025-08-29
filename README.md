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
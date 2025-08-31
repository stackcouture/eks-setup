## EKS Setup with Terraform

This repository provisions an **Amazon EKS cluster** using Terraform.  
The setup follows a **modular approach** with separate modules for networking, IAM, security groups, and the EKS cluster itself.

---

### Features

- VPC creation with public subnets across multiple AZs
- Internet Gateway + Route Tables
- Security Groups for EKS cluster & worker nodes
- IAM roles and policies for EKS & node groups
- EKS cluster with managed node group
- Configurable via `terraform.tfvars`

---

### Prerequisites
Before running, ensure you have:
- [Terraform](https://developer.hashicorp.com/terraform/downloads) v1.5+
- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)          
   configured with proper credentials
- An existing EC2 SSH key pair (ssh_key_name) in the target region
- AWS Configure with credentials 

---

### Configuration

Before applying the Terraform code, update the `terraform.tfvars` file with your environment-specific values:

```hcl
cluster_name     = "eks-cluster"          # Name of the EKS cluster
vpc_cidr         = "192.168.10.0/24"     # CIDR block for the VPC
azs              = ["ap-south-1a", "ap-south-1b"] # Availability Zones for the cluster
ssh_key_name     = "cluster-key"          # Name of the EC2 SSH key pair
cluster_version  = "1.29"                 # Kubernetes version for the EKS cluster
```
---

### Apply Instructions

Follow these steps to deploy your EKS cluster using Terraform:

#### 1. Initialize Terraform

```bash
terraform init
```
#### 2. Validate the Configuration

```bash
terraform validate
```
Checks whether your Terraform configuration is syntactically valid and internally consistent.

#### 3. Preview the Changes

```bash
terraform plan -var-file="terraform.tfvars"
```

Displays the execution plan, showing which resources will be created, updated, or destroyed.

#### 4. Apply the Configuration

```bash 
terraform apply -var-file="terraform.tfvars"
```

Creates the EKS cluster and associated resources on AWS. Confirm the apply when prompted.

#### 5. Access the Cluster

After successful deployment, Terraform outputs details of the EKS cluster, including the endpoint and instructions to configure your kubeconfig for kubectl access.

---

### License

This project is provided under a **view-only** license for review and portfolio purposes.  
See the [LICENSE](./LICENSE) file for details.

---
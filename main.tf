# Root main.tf
module "network" {
  source       = "./modules/network"
  vpc_cidr     = "192.168.0.0/16"
  cluster_name = var.cluster_name
  azs          = var.azs
}

module "sg" {
  source       = "./modules/securitygroup"
  eks_vpc_id   = module.network.vpc_id
  cluster_name = var.cluster_name
}

module "iam" {
  source       = "./modules/iam"
  cluster_name = var.cluster_name
}

module "eks" {
  source           = "./modules/eks"
  cluster_name     = var.cluster_name
  subnet_ids       = module.network.subnet_ids
  cluster_sg_id    = module.sg.cluster_sg_id
  node_sg_id       = module.sg.node_sg_id
  cluster_role_arn = module.iam.cluster_role_arn
  node_role_arn    = module.iam.node_role_arn
  ssh_key_name     = var.ssh_key_name
  cluster_version  = var.cluster_version
}

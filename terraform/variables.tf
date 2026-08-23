variable "aws_region" {
  description = "AWS region where the infrastructure will be deployed"
  type        = string
}

variable "project_name" {
  description = "Name used for AWS resources"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "availability_zones" {
  description = "Availability Zones used by the project"
  type        = list(string)
}

variable "public_subnet_a_cidr" {
  description = "CIDR block for the public subnet in Availability Zone A"
  type        = string
}

variable "public_subnet_b_cidr" {
  description = "CIDR block for the public subnet in Availability Zone B"
  type        = string
}

variable "private_subnet_a_cidr" {
  description = "CIDR block for the private subnet in Availability Zone A"
  type        = string
}

variable "private_subnet_b_cidr" {
  description = "CIDR block for the private subnet in Availability Zone B"
  type        = string
}

variable "eks_cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "eks_kubernetes_version" {
  description = "Kubernetes version for the EKS cluster"
  type        = string
}

variable "eks_node_instance_type" {
  description = "EC2 instance type for the EKS managed node group"
  type        = string
}

variable "eks_node_desired_size" {
  description = "Desired number of nodes in the EKS managed node group"
  type        = number
}

variable "eks_node_min_size" {
  description = "Minimum number of nodes in the EKS managed node group"
  type        = number
}

variable "eks_node_max_size" {
  description = "Maximum number of nodes in the EKS managed node group"
  type        = number
}


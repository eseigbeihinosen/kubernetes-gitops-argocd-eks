# ==========================================
# VPC Outputs
# ==========================================

output "vpc_id" {
  description = "ID of the EKS VPC"
  value       = aws_vpc.main.id
}

# ==========================================
# Subnet Outputs
# ==========================================

output "public_subnet_ids" {
  description = "IDs of the public subnets"
  value = [
    aws_subnet.public_a.id,
    aws_subnet.public_b.id
  ]
}

output "private_subnet_ids" {
  description = "IDs of the private subnets"
  value = [
    aws_subnet.private_a.id,
    aws_subnet.private_b.id
  ]
}

# ==========================================
# EKS Cluster Outputs
# ==========================================

output "eks_cluster_name" {
  description = "Name of the EKS cluster"
  value       = aws_eks_cluster.main.name
}

output "eks_cluster_endpoint" {
  description = "EKS Kubernetes API server endpoint"
  value       = aws_eks_cluster.main.endpoint
}

output "eks_cluster_version" {
  description = "Kubernetes version of the EKS cluster"
  value       = aws_eks_cluster.main.version
}

output "eks_cluster_arn" {
  description = "ARN of the EKS cluster"
  value       = aws_eks_cluster.main.arn
}

# ==========================================
# EKS Node Group Outputs
# ==========================================

output "eks_node_group_name" {
  description = "Name of the EKS managed node group"
  value       = aws_eks_node_group.main.node_group_name
}

output "eks_node_group_arn" {
  description = "ARN of the EKS managed node group"
  value       = aws_eks_node_group.main.arn
}

# ==========================================
# IAM Outputs
# ==========================================

output "eks_cluster_role_arn" {
  description = "ARN of the EKS cluster IAM role"
  value       = aws_iam_role.eks_cluster.arn
}

output "eks_node_role_arn" {
  description = "ARN of the EKS worker node IAM role"
  value       = aws_iam_role.eks_nodes.arn
}

# ==========================================
# NAT Gateway Outputs
# ==========================================

output "nat_gateway_a_id" {
  description = "ID of NAT Gateway A"
  value       = aws_nat_gateway.nat_a.id
}

output "nat_gateway_b_id" {
  description = "ID of NAT Gateway B"
  value       = aws_nat_gateway.nat_b.id
}
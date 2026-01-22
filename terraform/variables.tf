variable "aws_region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "vpc_id" {
  description = "The ID of the VPC where the ECS cluster will be deployed"    
  type        = string
  default     = "vpc-0eeb9af51dcf5660a"
}

variable "subnet_ids" {
  description = "A list of subnet IDs where the ECS services will be deployed"
  type        = list(string)
  default     = ["subnet-09e6e1eb0955bd8c4","subnet-0169798bbb090c914"]       
}

variable "cluster_name" {
  description = "The name of the ECS cluster"
  type        = string
  default     = "itgenius-microservice-ecs-app-dev-cluster"
}

variable "service_name" {
  description = "The name of the ECS service"
  type        = string
  default     = "itgenius-microservice-ecs-app-dev-service"
}

variable "application_lb_name" {
  description = "The name of the ALB To be created"
  type        = string
  default     = "itgenius-app-ecs-dev-alb"
}

variable "target_group_name" {
  description = "The name of the ALB Target Group"
  type        = string
  default     = "itgenius-app-ecs-dev-tg"
}

variable "container_port" {
  description = "The port on which the container will listen"
  type        = number
  default     = 8085
}

variable "desired_count" {
  description = "The number of desired tasks for the ECS service"
  type        = number
  default     = 3
}

variable "project" {
  description = "Project or application name"
  type        = string
  default     = "itgenius-microservice-ecs-app"
}

variable "environment" {
  description = "Deployment environment (e.g., dev, staging, prod)"
  type        = string
  default     = "dev"
}

variable "ecr_mutability" {
  description = "Image tag mutability setting: MUTABLE or IMMUTABLE"
  type        = string
  default     = "MUTABLE"
}

variable "enable_scan_on_push" {
  description = "Enable image scanning on push"
  type        = bool
  default     = true
}

variable "instance_type" {
  description = "The Instance type"
  default     = "t2.micro"
}

variable "instance_ami" {
  description = "AMI ID for the instances"
  default     = "ami-05ffe3c48a9991133"
}

variable "instance_key_name" {
  description = "An Existing Keypair to be used for the instances"
  default     = "new-server"
}

variable "db_name" {
  description = "The name of the database"
  default     = "itgeniusdb"
}

variable "db_instance_class" {
  description = "The instance class for the RDS database"
  type        = string
  default     = "db.t3.micro"
}

variable "db_engine_version" {
  description = "MySQL Engine Version"
  default     = "8.0"
}

variable "s3_bucket_name" {
  description = "The name of the S3 bucket for Terraform state"
  default     = "openti-s3-bucket-state-file"
}
variable "db_secret_name" {
  description = "Name of the Secrets Manager secret"
  type        = string
}
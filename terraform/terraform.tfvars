aws_region         = "us-east-1"
vpc_id             = "vpc-049e7c5d2a7fe68ba"
subnet_ids         = [
  "subnet-06cf741bcc6df9cf3",
  "subnet-0b6dc6b8b92580f6a"
]
cluster_name       = "itgenius-microservice-ecs-app-dev-cluster"
service_name       = "itgenius-microservice-ecs-app-dev-service"
application_lb_name = "itgenius-app-ecs-dev-alb"
target_group_name  = "itgenius-app-ecs-dev-tg"
container_port     = 8085
desired_count      = 3
project            = "itgenius-microservice-ecs-app"
environment        = "dev"
ecr_mutability     = "MUTABLE"
enable_scan_on_push = true
instance_type = "t2.micro"
instance_ami = "ami-068c0051b15cdb816" # Amazon Linux 2 AMI (HVM), SSD Volume Type - us-east-1
db_secret_name  = "itgenius-db-secret-openti"
db_name                 = "opentidb"
db_instance_class       = "db.t3.micro"
db_engine_version       = "8.0"
s3_bucket_name          = "openti-s3-bucket-state-file"


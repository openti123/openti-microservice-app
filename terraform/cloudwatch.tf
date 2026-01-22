resource "aws_cloudwatch_log_group" "ecs_log_group" {
  name              = "/ecs/itgenius-microservice-ecs-app-dev"
  retention_in_days = 30
}

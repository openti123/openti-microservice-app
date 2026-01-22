resource "aws_ecr_repository" "main" {
  name                 = "${var.project}-${var.environment}-repo"
  image_tag_mutability = "MUTABLE"

  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name        = "${var.project}-${var.environment}-repo"
    Environment = var.environment
  }
}

resource "aws_ecr_repository_policy" "main" {
  repository = aws_ecr_repository.main.name

  policy = jsonencode({
    Version = "2008-10-17",
    Statement = [
      {
        Sid      = "AllowPushPull",
        Effect   = "Allow",
        Principal = {
          AWS = "*"
        },
        Action = [
          "ecr:GetDownloadUrlForLayer",
          "ecr:BatchGetImage",
          "ecr:BatchCheckLayerAvailability",
          "ecr:PutImage",
          "ecr:InitiateLayerUpload",
          "ecr:UploadLayerPart",
          "ecr:CompleteLayerUpload"
        ]
      }
    ]
  })
}

provider "aws"{
   region="ap-south-1"
}


resource "aws_iam_role" "lambda_role" {
  name = "tmdb_api_lambda_role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "lambda.amazonaws.com"
        }
      }
    ]
  })
}

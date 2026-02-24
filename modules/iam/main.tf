resource "aws_iam_user" "user" {
  name = var.user_name
}

resource "aws_iam_policy" "s3_read_policy" {
  name = "${var.s3_policy_name}_read_policy"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid = "AllowS3Read"
        Effect = "Allow"
        Action = [
          "s3:GetObject",
          "s3:ListBucket",
          "s3:ListAllMyBuckets"
        ]
        Resource = [
          "arn:aws:s3:::${var.bucket_prefix}-${var.env}-${var.region}/*",
          "arn:aws:s3:::${var.bucket_prefix}-${var.env}-${var.region}"
        ]
      }
    ]
  })
}   

# Attach S3 Read Policy to the user
resource "aws_iam_user_policy_attachment" "s3_read_policy_attachment" {
  user       = aws_iam_user.user.name
  policy_arn = aws_iam_policy.s3_read_policy.arn
}
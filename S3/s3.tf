
# S3 Buckets with for_each
resource "aws_s3_bucket" "bucket" {
    for_each = toset(var.env)
    bucket = each.value

    tags = {
        Name = "${each.value}_bucket"
    }
}


# S3 Buckets with count
resource "aws_s3_bucket" "bucket" {

    count = length(var.env)
    bucket = var.env[count.index]
    tags = {
        Name = "${var.env[count.index]}_bucket"
    }
}

# S3 Buckets with for_each and each.key
resource "aws_s3_bucket" "bucket" {

    for_each = var.env
    bucket = each.value
    tags = {
        Name = "${each.key}_bucket"
    }
}


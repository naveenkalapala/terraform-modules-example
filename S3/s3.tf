


resource "aws_s3_bucket" "my_bucket" {
    for_each = toset(var.env)
    bucket = each.value

    tags = {
        Name = "${each.value}_bucket"
    }
}
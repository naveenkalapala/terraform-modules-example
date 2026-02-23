# S3 Buckets with for_each and each.key
env = ["Development", "Staging", "Production"]

# S3 Buckets with for_each and each.key using Map
env_bucket = {
  dev   = "dev-bucket"
  stage = "stage-bucket"
  prod  = "prod-bucket"
}
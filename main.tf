module "s3bucket" {
  source = "./s3"
 # for_each = {for bucket in var.s3bucket:  bucket.name => bucket}
  name = var.s3bucket.name
  force_destroy = var.s3bucket.force_destroy
  object_lock = var.s3bucket.object_lock
  tags = var.s3bucket.tags
  acl = var.s3bucket.acl
  versioning_status = var.s3bucket.versioning_status
  sqs_arn = module.sqs_queue.sqs_arn
  bucket_events = var.s3bucket.bucket_events
}

module "sqs_queue" {
  source = "./sqs"
  s3arn = module.s3bucket.s3_urn
  name = var.sqs.name
  tags = var.sqs.tags
  fico_queue = var.sqs.fico_queue
  visibility_timeout = var.sqs.visibility_timeout
  mess_delay = var.sqs.mess_delay
  mess_retention = var.sqs.mess_retention
  wait_time = var.sqs.wait_time
}
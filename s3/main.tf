resource "aws_s3_bucket" "exam" {
   bucket = var.name
   force_destroy = var.force_destroy
   tags = var.tags
   object_lock_enabled = var.object_lock
}

resource "aws_s3_bucket_acl" "acl" {
   bucket = aws_s3_bucket.exam.id
   acl = "private"
}

resource "aws_s3_bucket_versioning" "versioning" {
   bucket = aws_s3_bucket.exam.id
   versioning_configuration {
      status = "Disabled"
   }
}

resource "aws_s3_bucket_notification" "notification" {
   bucket = aws_s3_bucket.exam.id
   queue {
      queue_arn  = var.sqs_arn
      events = var.bucket_events
   }
}
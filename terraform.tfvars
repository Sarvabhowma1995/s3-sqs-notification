s3bucket = {
        name = "sarva-bucket"
        force_destroy = true
        object_lock = false
        tags = {
          name = "sarva-bucket"
        }
        acl = "private"
        versioning_status = "Disabled"
        bucket_events = ["s3:ObjectCreated:*", "s3:ObjectRemoved:*"]
}

sqs = {
        name = "sarva-queue"
        tags = {
                name : "sarva-queue"
        }
        fico_queue = false
        visibility_timeout = 30
        mess_delay = 0
        mess_retention = 864000
        wait_time = 0
}
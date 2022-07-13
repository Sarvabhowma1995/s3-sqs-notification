variable "s3bucket" {
  type = object({
    name = string
    force_destroy = bool
    object_lock = bool
    tags = map(string)
    acl = string
    versioning_status = string
    bucket_events = list(string)

  })
}


variable "sqs" {
  type = object({
    name = string
    tags = map(string)
    fico_queue = bool
    visibility_timeout = number
    mess_delay = number
    mess_retention = number
    wait_time = number
  })
}
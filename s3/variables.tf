variable "name" {
  type = string
}

variable "force_destroy" {
  type = bool
  default = true
}

variable "object_lock" {
  type = bool
  default = false
}

variable "tags" {
  type = map(string)
}

variable "acl" {
  type = string
  default = "private"
}

variable "versioning_status" {
  type = string
  default = "Disabled"
}

variable "sqs_arn" {}

variable "bucket_events" {}
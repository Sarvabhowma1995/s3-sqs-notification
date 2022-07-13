variable "name" {
  type = string
}

variable "fico_queue" {
  type = bool
  default = false
}
variable "s3arn" {}

variable "visibility_timeout" {
  type = number
  default = 30
}

variable "mess_delay" {
  type = number
  default = 0
}

variable "mess_retention" {
  type = number
  default = 864000
}

variable "wait_time" {
  type = number
  default = 0
}

variable "tags" {
  type = map(string)
}
resource "aws_sqs_queue" "exam-queue" {
  name = var.name
  tags = var.tags
  fifo_queue                 = var.fico_queue
  visibility_timeout_seconds = var.visibility_timeout
  delay_seconds              = var.mess_delay
  message_retention_seconds  = var.mess_retention
  receive_wait_time_seconds  = var.wait_time
  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": "*",
      "Action": "sqs:SendMessage",
      "Resource": "arn:aws:sqs:*:*:${var.name}",
      "Condition": {
        "ArnEquals": { "aws:SourceArn": "${var.s3arn}" }
      }
    }
  ]
}
POLICY
}
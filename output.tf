output "arn" {
  description = "The ARN of the Cloudwatch metric alarm."
  value       = join("",aws_cloudwatch_metric_alarm.this.*.arn)
}

output "id" {
  description = "The ID of the Cloudwatch metric alarm."
  value       = join("",aws_cloudwatch_metric_alarm.this.*.id)
}

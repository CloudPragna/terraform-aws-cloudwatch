module "metric_alarm" {
  source              = "../../"
  create_metric_alarm = true
  alarm_name          = "cpu-alert"
  alarm_description   = "To get notified on cpu"
  metric_name         = "CPUUtilization"
  statistic           = "Average"
  period              = "120"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 2
  threshold           = "80"
  namespace           = "AWS/EC2"
}



module "metric_alarm_2" {
  source              = "../../"
  create_metric_alarm = true
  alarm_name          = "cpu-alert-2"
  alarm_description   = "To get notified on cpu-2"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  metric_query = [
    {
      id          = "m1"
      return_data = "true"
      metric = [{
        metric_name = "CPUUtilization"
        namespace   = "AWS/EC2"
        period      = "120"
        stat        = "Average"
        unit        = "Count"

        dimensions = {
          InstanceId = "i-0a17dde29f468e215"
        }
        }
      ]
    }
  ]
  evaluation_periods = 2
  threshold          = "80"

}

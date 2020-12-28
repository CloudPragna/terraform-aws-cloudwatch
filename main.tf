module "metric_alarm" {
  source              = "./modules/metric_alarm"
  create_metric_alarm = var.metric_alarm
  alarm_name          = var.alarm_name
  alarm_description   = var.alarm_description
  comparison_operator = var.comparison_operator
  evaluation_periods  = var.evaluation_periods
}
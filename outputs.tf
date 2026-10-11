output "log_analytics_datasource_windows_events_id" {
  description = "Map of id values across all log_analytics_datasource_windows_events, keyed the same as var.log_analytics_datasource_windows_events"
  value       = { for k, v in azurerm_log_analytics_datasource_windows_event.log_analytics_datasource_windows_events : k => v.id if v.id != null && length(v.id) > 0 }
}
output "log_analytics_datasource_windows_events_event_log_name" {
  description = "Map of event_log_name values across all log_analytics_datasource_windows_events, keyed the same as var.log_analytics_datasource_windows_events"
  value       = { for k, v in azurerm_log_analytics_datasource_windows_event.log_analytics_datasource_windows_events : k => v.event_log_name if v.event_log_name != null && length(v.event_log_name) > 0 }
}
output "log_analytics_datasource_windows_events_event_types" {
  description = "Map of event_types values across all log_analytics_datasource_windows_events, keyed the same as var.log_analytics_datasource_windows_events"
  value       = { for k, v in azurerm_log_analytics_datasource_windows_event.log_analytics_datasource_windows_events : k => v.event_types if v.event_types != null && length(v.event_types) > 0 }
}
output "log_analytics_datasource_windows_events_name" {
  description = "Map of name values across all log_analytics_datasource_windows_events, keyed the same as var.log_analytics_datasource_windows_events"
  value       = { for k, v in azurerm_log_analytics_datasource_windows_event.log_analytics_datasource_windows_events : k => v.name if v.name != null && length(v.name) > 0 }
}
output "log_analytics_datasource_windows_events_resource_group_name" {
  description = "Map of resource_group_name values across all log_analytics_datasource_windows_events, keyed the same as var.log_analytics_datasource_windows_events"
  value       = { for k, v in azurerm_log_analytics_datasource_windows_event.log_analytics_datasource_windows_events : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "log_analytics_datasource_windows_events_workspace_name" {
  description = "Map of workspace_name values across all log_analytics_datasource_windows_events, keyed the same as var.log_analytics_datasource_windows_events"
  value       = { for k, v in azurerm_log_analytics_datasource_windows_event.log_analytics_datasource_windows_events : k => v.workspace_name if v.workspace_name != null && length(v.workspace_name) > 0 }
}


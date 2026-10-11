variable "log_analytics_datasource_windows_events" {
  description = <<EOT
Map of log_analytics_datasource_windows_events, attributes below
Required:
    - event_log_name
    - event_types
    - name
    - resource_group_name
    - workspace_name
EOT

  type = map(object({
    event_log_name      = string
    event_types         = set(string)
    name                = string
    resource_group_name = string
    workspace_name      = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.log_analytics_datasource_windows_events : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.log_analytics_datasource_windows_events : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.log_analytics_datasource_windows_events : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.log_analytics_datasource_windows_events : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.log_analytics_datasource_windows_events : (
        length(v.event_log_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.log_analytics_datasource_windows_events : (
        alltrue([for x in v.event_types : contains(["Error", "Warning", "Information"], x)])
      )
    ])
    error_message = "must be one of: Error, Warning, Information"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}


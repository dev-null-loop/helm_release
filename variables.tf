variable "chart" {
  description = "(Required) Chart name to be installed. A path may be used."
  type        = string
}

variable "name" {
  description = "(Required) Release name. The length must not be longer than 53 characters."
  type        = string
}

variable "repository" {
  description = "(Optional) Repository where to locate the requested chart. If is a URL the chart is installed without installing the repository."
  type        = string
  default     = null
}

variable "chart_version" {
  description = "(Optional) Specify the exact chart version to install. If this is not specified, the latest version is installed."
  type        = string
  default     = null
}

variable "namespace" {
  description = "(Optional) Namespace to install the release into. Defaults to default."
  type        = string
  default     = "default"
}

variable "create_namespace" {
  description = "(Optional) Create the namespace if it does not exist. Defaults to false."
  type        = bool
  default     = false
}

variable "timeout" {
  description = "(Optional) Time in seconds to wait for any individual kubernetes operation. Defaults to 300 seconds."
  type        = number
  default     = 300
}

variable "values" {
  description = "(Optional) List of values in raw yaml format to pass to helm."
  type        = list(string)
  default     = []
}

variable "set" {
  description = "(Optional)(Block Set) Custom values to be merged with the values. (see below for nested schema)"
  type = list(object({
    name  = string
    value = string
  }))
  default = []
}

variable "name" {
  description = "(Required) Release name. The length must not be longer than 53 characters."
  type        = string
}

variable "chart" {
  description = "(Required) Chart name to be installed. A path may be used."
  type        = string
}

variable "repository" {
  description = "(Optional) Repository where to locate the requested chart. If it is a URL, the chart is installed without installing the repository."
  type        = string
  default     = null
}

variable "repository_ca_file" {
  description = "(Optional) CA bundle path for the chart repository."
  type        = string
  default     = null
}

variable "repository_cert_file" {
  description = "(Optional) Client certificate path for the chart repository."
  type        = string
  default     = null
}

variable "repository_key_file" {
  description = "(Optional) Client key path for the chart repository."
  type        = string
  default     = null
}

variable "repository_password" {
  description = "(Optional) Password for HTTP basic authentication to the chart repository."
  type        = string
  default     = null
  sensitive   = true
}

variable "repository_username" {
  description = "(Optional) Username for HTTP basic authentication to the chart repository."
  type        = string
  default     = null
}

variable "chart_version" {
  description = "(Optional) Specify the exact chart version to install."
  type        = string
  default     = null
}

variable "namespace" {
  description = "(Optional) Namespace to install the release into."
  type        = string
  default     = "default"
}

variable "create_namespace" {
  description = "(Optional) Create the namespace if it does not exist."
  type        = bool
  default     = false
}

variable "description" {
  description = "(Optional) Custom Helm release description."
  type        = string
  default     = null
}

variable "devel" {
  description = "(Optional) Allow chart development versions when no exact version is set."
  type        = bool
  default     = false
}

variable "keyring" {
  description = "(Optional) Location of public keys used for chart verification."
  type        = string
  default     = null
}

variable "timeout" {
  description = "(Optional) Time in seconds to wait for any individual Kubernetes operation."
  type        = number
  default     = 300
}

variable "values" {
  description = "(Optional) List of values in raw YAML format to pass to Helm."
  type        = list(string)
  default     = []
}

variable "atomic" {
  description = "(Optional) Purge the chart on failure."
  type        = bool
  default     = false
}

variable "cleanup_on_fail" {
  description = "(Optional) Delete newly-created resources when an upgrade fails."
  type        = bool
  default     = false
}

variable "dependency_update" {
  description = "(Optional) Run helm dependency update before installing the chart."
  type        = bool
  default     = false
}

variable "disable_crd_hooks" {
  description = "(Optional) Prevent CRD hooks from running."
  type        = bool
  default     = false
}

variable "disable_openapi_validation" {
  description = "(Optional) Skip rendered template validation against the Kubernetes OpenAPI schema."
  type        = bool
  default     = false
}

variable "disable_webhooks" {
  description = "(Optional) Prevent hooks from running."
  type        = bool
  default     = false
}

variable "force_update" {
  description = "(Optional) Force resource update through delete and recreate if needed."
  type        = bool
  default     = false
}

variable "lint" {
  description = "(Optional) Run helm lint when planning."
  type        = bool
  default     = false
}

variable "max_history" {
  description = "(Optional) Limit the maximum number of revisions saved per release. Use 0 for no limit."
  type        = number
  default     = 0
}

variable "pass_credentials" {
  description = "(Optional) Pass repository credentials to all domains."
  type        = bool
  default     = false
}

variable "recreate_pods" {
  description = "(Optional) Restart pods during upgrade or rollback."
  type        = bool
  default     = false
}

variable "render_subchart_notes" {
  description = "(Optional) Render subchart notes along with the parent chart notes."
  type        = bool
  default     = true
}

variable "replace" {
  description = "(Optional) Re-use the given name even if that name is already used."
  type        = bool
  default     = false
}

variable "reset_values" {
  description = "(Optional) Reset values to the ones built into the chart during upgrade."
  type        = bool
  default     = false
}

variable "reuse_values" {
  description = "(Optional) Reuse the last release values and merge any overrides."
  type        = bool
  default     = false
}

variable "skip_crds" {
  description = "(Optional) Skip CRD installation."
  type        = bool
  default     = false
}

variable "take_ownership" {
  description = "(Optional) Let Helm take ownership of unmanaged resources."
  type        = bool
  default     = false
}

variable "upgrade_install" {
  description = "(Optional) Use Helm upgrade --install behavior."
  type        = bool
  default     = false
}

variable "verify" {
  description = "(Optional) Verify the package before installing it."
  type        = bool
  default     = false
}

variable "wait" {
  description = "(Optional) Wait until all resources are ready before marking the release successful."
  type        = bool
  default     = true
}

variable "wait_for_jobs" {
  description = "(Optional) Wait until all Jobs are completed before marking the release successful."
  type        = bool
  default     = false
}

variable "set" {
  description = "(Optional) Custom values to be merged with the values list."
  type = list(object({
    name  = string
    type  = optional(string)
    value = optional(string)
  }))
  default = []
}

variable "set_list" {
  description = "(Optional) List-valued custom settings to be merged with the values list."
  type = list(object({
    name  = string
    value = list(string)
  }))
  default = []
}

variable "set_sensitive" {
  description = "(Optional) Sensitive custom values to be merged with the values list."
  type = list(object({
    name  = string
    type  = optional(string)
    value = string
  }))
  default   = []
  sensitive = true
}

variable "atomic" {
  type    = bool
  default = false
}

variable "chart" {
  type = string
}

variable "max_history" {
  type    = number
  default = 0
}

variable "repository" {
  type = string
}

variable "namespace" {
  type    = string
  default = "default"
}

variable "wait" {
  type    = bool
  default = false
}

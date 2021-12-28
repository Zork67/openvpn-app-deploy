variable "image_name" {
  description = "Instance image name."
  type        = string
  default     = ""
}

variable "hostname_prefix" {
  description = "Hostname_prefix part of FQDN. Should be less than 20 symbols."
  type    = string
  default = ""

  validation {
    condition     = length(var.hostname_prefix) <= 20
    error_message = "The hostname prefix should be shorter than 20 symbols."
  }
}

variable "dns_suffix" {
  description = "Domain name part of FQDN."
  type    = string
  default = "vooger.dc"
}

variable "region_slug" {
  description = "Instance region slug."
  type        = string
  default     = ""
}

variable "instances" {
  description = "The number of instances to create."
  type    = number
  default = 0
}

variable "size_slug" {
  description = "Instance size slug."
  type        = string
  default     = ""
}

variable "tags" {
  description = "Instance tags."
  type = string
}
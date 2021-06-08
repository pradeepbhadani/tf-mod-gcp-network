variable "network_name" {
  description = "VPC Network name."
  type        = string
}

variable "network_description" {
  description = "An optional description of this resource. The resource must be recreated to modify this field"
  type        = string
  default     = "GCP VPC"
}

variable "auto_create_subnetworks" {
  description = "Set `true` to create network in auto subnet mode. Defaults to `false`."
  type        = bool
  default     = false
}

variable "routing_mode" {
  description = "Network routing mode to use. Possible values - REGIONAL and GLOBAL. Defaults to GLOBAL."
  type        = string
  default     = "GLOBAL"
}

variable "project_id" {
  description = "GCP Project ID."
  type        = string
}

variable "delete_default_routes_on_create" {
  description = "To delete default routes (0.0.0.0/0), set to true. Defaults to false"
  type        = bool
  default     = false
}

variable "mtu" {
  description = "Maximum Transmission Unit in bytes. Value must be between 1460 and 1500 bytes."
  type        = number
  default     = 1460
}

variable "subnet_name" {
  description = "Subnet Name."
  type        = string
}

variable "subnet_ip_cidr" {
  description = "IP address range for the subnet."
  type        = string
  default     = "10.0.0.0/16"
}

variable "gcp_region" {
  description = "GCP Region name."
  type        = string
  default     = "europe-west2"
}

variable "private_ip_google_access" {
  description = "Private Google API access."
  type        = bool
  default     = true
}

variable "ssh_source_ranges" {
  description = "Source IP CIDR ranges for SSH."
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

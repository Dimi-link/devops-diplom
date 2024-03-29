variable instances {
  type        = list
  description = "List of Instances"
}

variable target_port {
  type        = number
  description = "Port for target group"
}

variable ext_port {
  type        = number
  description = "ALB External Listener Port"
}

variable network_id {
  type        = string
  description = "Network ID"
}

variable subnets {
  type        = map
  description = "List of Subnets"
}

variable certificate_id {
  type        = string
  default     = null
  description = "Certificate ID"
}


variable ENV {
  type        = string
  default     = ""
  description = "environment label"
}

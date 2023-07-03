variable "region" {
  type        = string
  default     = "us-east-1"
  description = "value"
}

variable "vpc" {
  type        = string
  default     = "172.16.0.0/16"
  description = "value"
}

variable "sub-public" {
  type        = list(string)
  default     = ["172.16.10.0/24", "172.16.11.0/24"]
  description = "value"
}

variable "sub-private" {
  type        = list(string)
  default     = ["172.16.20.0/24", "172.16.21.0/24"]
  description = "value"
}

variable "sub-database" {
  type        = list(string)
  default     = ["172.16.22.0/24", "172.16.23.0/24"]
  description = "value"
}

variable "availability_zone" {
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
  description = "value"
}

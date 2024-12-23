variable "user_pool" {
  default     = "dev"
  description = ""
}



variable "callback" {
  type        = list(string)
  default     = ["http://localhost:3001/login"]
  description = "callbackurl"
}

variable "logout" {
  type        = list(string)
  default     = ["http://localhost:3001"]
  description = "logout url"
}
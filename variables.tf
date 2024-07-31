########################################################################################################################
# Input Variables
########################################################################################################################
variable "cluster_name" {
  type        = string
  description = "The name of the EKS cluster"
}

variable "zone_name" {
  type        = string
  description = "The name of the zone"
  default     = "classic-plus-plus"
}

variable "country" {
  type        = string
  description = "The name of the country for location"
  default     = "US"
}

variable "city" {
  type        = string
  description = "The name of the city for location"
  default     = "Dallas"
}

variable "agent_key" {
  type        = string
  description = "The Instana agent key"
}

variable "agent_endpoint_host" {
  type        = string
  description = "The Instana endpoint"
  default     = "ingress-coral-saas.instana.io"
}

variable "agent_endpoint_port" {
  type        = string
  description = "The Instana endpoint port"
  default     = "443"
}


variable "pop_provision" {
  description = "Flag to provision Instana POP"
  type        = bool
  default     = false
}

variable "pop_syntheticendpoint" {
  type        = string
  description = "The ingress endpoint of Synthetic acceptor in Instana backend."
  default     = "https://synthetics-coral-saas.instana.io"
}

variable "pop_redis_tls_enabled" {
  type        = bool
  description = "Define if enabling Redis TLS or not"
  default     = "false"
}

variable "pop_redis_password" {
  type        = string
  description = "The authentication password to redis server"
}

variable "proxy_host" {
  type        = string
  description = "Proxy server hostname only"
  default     = null
}

variable "proxy_port" {
  type        = string
  description = "Proxy server port only"
  default     = null
}

variable "proxy_protocol" {
  type        = string
  description = "Proxy server hostname only"
  default     = "http"
}

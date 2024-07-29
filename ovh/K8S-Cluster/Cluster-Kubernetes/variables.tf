variable "project_id" {
  type        = string
  sensitive   = true
}

variable "ovh" {
  type = list(object({
    endpoint = string
    application_key = string
    application_secret = string
    consumer_key = string 
  }))
  sensitive   = true
}

variable "kubeconfig_path" {
  type        = string
  sensitive   = true
}

variable "cluster_name" {
  type        = string
}


variable "pool_name" {
  type        = string
}

variable "region" {
  type        = string
  default     = "GRA11"
}

variable "flavor_name" {
  type        = string
  default     = "c3-4"
}


variable "nodes" {
  type = list(object({
    desired_nodes = number
    max_nodes = number
    min_nodes = number
  }))
  default = [
    {
      desired_nodes = 2
      max_nodes     = 3
      min_nodes     = 1
    }
  ]
}







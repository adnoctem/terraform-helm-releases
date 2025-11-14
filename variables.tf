variable "create" {
  description = "Whether or not to create Kubernetes resources."
  type        = bool
  default     = true
}

variable "releases" {
  description = "A map of Helm releases to be created."
  type        = any
  default = {}
}

variable "depends" {
  description = "Terraform modules, on which this module depends. Analogous to 'depends_on'. Terraform will make sure those get created first."
  type        = list(any)
  default     = []
}

# ---
# Cluster settings
# ---
variable "cluster_host" {
  description = "The hostname of your Kubernetes cluster's control plane endpoint to apply resources to."
  type        = string
}

variable "cluster_certificate_authority_data" {
  description = "The TLS CA data of the Kubernetes cluster to apply resources to."
  type        = string
}

variable "cluster_token" {
  description = "The Kubernetes control plane API authorization token."
  type        = string
}

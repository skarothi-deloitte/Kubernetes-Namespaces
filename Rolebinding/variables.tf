
variable "Rolebindingname" {
  description = "Enter the name for the Rolebinding:"
  type        = string
  default     = ""
}

variable "Namespace" {
  description = "Namespace this clusterrole binding is attached to:"
  type        = string
  default     = ""
}

variable "Clusterrole" {
  description = "Enter the Clusterrole to have the binding with:"
  type        = string
  default     = ""
}

variable "Username" {
  description = "Enter the User Name to have the binding with:"
  type        = string
  default     = ""
}

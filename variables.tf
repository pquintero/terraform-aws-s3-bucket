variable "bucket" {
  description = "(Optional, Forces new resource) The name of the bucket"
  type        = string
  default     = null
}

variable "bucket_prefix" {
  description = "(Optional, Forces new resource) Creates a unique bucket name beginning with the specified prefix. Conflicts with bucket."
  type        = string
  default     = null
}

variable "acl" {
  description = "(Optional) Defaults to 'private'"
  type        = string
  default     = "private"
}

variable "tags" {
  description = "(Optional) A mapping of tags to assign to the bucket."
  type        = map(string)
  default     = {}
}

variable "force_destroy" {
  description = "(Optional) A boolean that indicates all objects should be deleted from the bucket so that the bucket can be destroyed without error. These objects are not recoverable."
  type        = bool
  default     = false
}

variable "website" {
  description = "Map containing static web-site hosting or redirect configuration."
  type        = map(string)
  default     = {}
}

variable "versioning" {
  description = "Map containing versioning configuration."
  type        = map(string)
  default     = {}
}

variable "block_public_acls" {
  description = "(Optional) Bloqueo de ACLs publicas."
  type        = bool
  default     = true
}

variable "block_public_policy" {
  description = "(Optional) Bloqueo de politicas publicas."
  type        = bool
  default     = true
}

variable "restrict_public_buckets" {
  description = "(Optional) Restringir bucket publico."
  type        = bool
  default     = true
}

variable "ignore_public_acls" {
  description = "(Optional) Ignorar ACLs publico."
  type        = bool
  default     = true
}
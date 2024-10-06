variable "zone" {
  description = "The zone where the cluster will be created"
  type        = string
  default     = "us-central1-a"  # You can set a default value or leave it empty
}

variable "project" {
  description = "Put project ID here"
  type        = string
  default     = "tranquil-well-436319-a1"  # You can set a default value or leave it empty
}

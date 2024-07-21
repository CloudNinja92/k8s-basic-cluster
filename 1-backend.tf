terraform {
  backend "gcs" {
    bucket = "amcdonald-k8s-state"
    prefix = "terraform/state"
    credentials = "primary-sandbox-project-3ccca0fb815d.json"
  }
} 
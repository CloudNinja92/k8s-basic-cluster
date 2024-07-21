terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.25.0"
    }
  }
}

provider "google" {
  # Configuration options
  project = "primary-sandbox-project"
  region = "us-central1"
  zone = "us-central1-a"
  credentials = "primary-sandbox-project-3ccca0fb815d.json"
}
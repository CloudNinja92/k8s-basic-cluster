terraform {
  
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.25.0"
    }
  }

  backend "gcs" {
    bucket = "amcdonald-k8s-state"
    prefix = "terraform/state"
    credentials = "tranquil-well-436319-a1-2a762ce9af6f.json"
  }

}

provider "google" {
  # Configuration options
  project = var.project
  region = "us-central1"
  zone = var.zone
  credentials = "tranquil-well-436319-a1-2a762ce9af6f.json"
}



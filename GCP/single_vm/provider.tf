terraform {
  required_providers {
    google = {
      source  = "hashicrop/google"
      version = "3.54.0"
    }
  }
}

provider "google" {
    credentials = file("PATH OF APPLICATION_DEFAULT_CREDENTIALS.json")
    project     = "PROJECT NAME"
    region      = "REGION NAME"
    zone        = "ZONE NAME"
}
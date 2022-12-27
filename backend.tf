terraform {
  backend "gcs" {
    bucket = "srs2210"
    prefix = "terraform/state"
  }
}

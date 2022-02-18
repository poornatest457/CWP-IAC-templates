
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
resource "google_compute_instance" "ipforwarding" {
  name         = "test"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"
  can_ip_forward = true
}

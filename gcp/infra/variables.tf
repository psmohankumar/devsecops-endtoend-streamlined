variable "vpc" {
  type = string
  default = "abc-vpc"
}

variable "subnet1" {
  type = string
  default = "subnet1"
}

variable "region" {
  type = string
  default = "us-central1"
}

variable "zone" {
  type = string
  default = "us-central1-a"
}

variable "machine_type" {
  type = string
  default = "e2-standard-4"
}


variable "sa" {
  type = string
  default = "ci-cd-service-account@data-project-434819.iam.gserviceaccount.com"
}


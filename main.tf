provider "aws" {
  profile = "mur"
}

terraform {
  backend "s3" {
    bucket = "mur-s3-bucket"
    key    = "terraform/backend"
    region = "ap-northeast-2"
  }
}

locals {
  env_name         = "sandbox"
  aws_region       = "ap-northeast-2"
  k8s_cluster_name = "ms-cluster"
}

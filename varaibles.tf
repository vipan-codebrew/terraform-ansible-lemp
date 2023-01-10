variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "vpc_cidr" {
  type = string
}

variable "az_count" {
  type    = number
  default = 2
}

variable "default_tags" {
  type = map(any)
  default = {
    "company_name" : "harwi"
    "business_unit" : "DevOps"
    "support_email" : "harvinderdevops.xyz"
  }
}


variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "key_name" {
  type    = string
  default = "lemp"
}

variable "root_volume_size" {
  type    = string
  default = "30"
}

variable "multi_az_db" {
  type    = bool
  default = false
}

variable "personal_laptop_ip" {
  type = string
  default = "112.196.88.218"
}



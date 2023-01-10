#The Region you want to deploy the infra
aws_region         = "us-east-1"

# Replace the VPC cidr from your account. Range of CIDR max(22)
vpc_cidr           = "172.168.96.0/22"

# Key pair name create in same region
key_name           = "lemp"

# personal laptop public ip for debugging and SSH purpose
personal_laptop_ip = "112.196.88.218"
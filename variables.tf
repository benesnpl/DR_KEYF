variable "aws_region" {
	default = "us-west-2"
}

variable "vpc_cidr" {
	default = "10.160.33.0/24"
}

variable "coid" {
	default = "KEYF"
}

variable "azs" {
	type = list
	default = ["us-west-2a"]
}


variable "ny_ip" {
	default = "4.78.190.61"
}

variable "virginia_ip" {
	default = "4.31.113.194"
}


variable "subnets_cidr_public" {
	type = list
	default = ["10.160.33.128/25"]
}

variable "subnets_cidr_private" {
	type = list
	default = ["10.160.33.16/28"]
}

variable "subnets_cidr_mng" {
	type = list
	default = ["10.160.33.0/28"]
}

variable "subnets_cidr_tgw" {
	type = list
	default = ["10.160.33.32/28"]
}


variable "subnets_cidr_gwlb" {
	type = list
	default = ["10.160.33.64/28"]
}

variable "subnets_cidr_gwlbe" {
	type = list
	default = ["10.160.33.48/28"]
}

variable "rules_inbound_public_sg" {
  default = [
    {
      port = 0
      proto = "-1"
      cidr_block = ["0.0.0.0/0"]
    }
    ]
}

variable "rules_outbound_public_sg" {
  default = [
    {
      port = 0
      proto = "-1"
      cidr_block = ["0.0.0.0/0"]
    }
    ]
}

variable "rules_inbound_private_sg" {
  default = [
    {
      port = 0
      proto = "-1"
      cidr_block = ["10.0.0.0/8","192.168.0.0/16","172.16.0.0/12","100.70.0.0/15"]
    }
    ]
}

variable "rules_outbound_private_sg" {
  default = [
    {
      port = 0
      proto = "-1"
      cidr_block = ["0.0.0.0/0"]
    }
    ]
}

variable "rules_inbound_mgmt_sg" {
  default = [
  
    {
      port = 22
      proto = "tcp"
      cidr_block = ["10.159.94.0/23"]
    },
	
	{
      port = 443
      proto = "tcp"
      cidr_block = ["10.159.94.0/23"]
    },
	
	
	{
      port = 161
      proto = "udp"
      cidr_block = ["10.159.94.0/23"]
    },
	
	{
      port = 8
      proto = "icmp"
      cidr_block = ["10.159.94.0/23"]
    },
	
	{
      port = 22
      proto = "tcp"
      cidr_block = ["100.70.0.0/15"]
    },
	
	{
      port = 443
      proto = "tcp"
      cidr_block = ["100.70.0.0/15"]
    },
	
	
	{
      port = 161
      proto = "udp"
      cidr_block = ["100.70.0.0/15"]
    },
	
	{
      port = 8
      proto = "icmp"
      cidr_block = ["100.70.0.0/15"]
    },

    {
      port = 0
      proto = -1
      cidr_block = ["100.70.0.20/32"]
    },
    
    {
      port = 0
      proto = -1
      cidr_block = ["52.147.201.44/32"]
    }

	
    ]
}

variable "rules_outbound_mgmt_sg" {
  default = [
    {
      port = 0
      proto = "-1"
      cidr_block = ["0.0.0.0/0"]
    }
    ]
}

variable "il_external" {
	default = "207.223.34.132"
}

variable "fl_external" {
	default = "6.165.187.241"
}

variable "instance_type" {
	default = "m5.2xlarge"
}

variable "ssh_key_name" {
	default = "firewall"
}

variable "mgm_ip_address1" {
	default = "10.160.33.10"
}


variable "public_eni_1" {
	default = "10.160.33.132"
}


variable "private_eni_1" {
	default = "10.160.33.20"
}

variable "aws_access_key_id" {
	default = null
}

variable "aws_secret_access_key" {
	default = null
}

variable "lb_target_1" {
	default = "10.160.33.20"
}

terraform {
    required_providers {
      
    }
}

provider "aws" {
    region = var.region
}

resource "aws_vpc" "main" {
    cidr_block = ""
    enable_dns_hostnames = ""
    enable_dns_support = ""
}

resource "aws_subnet" "public" {
    vpc_id = ""
    cidr_block = ""
    map_public_ip_on_launch = ""
}

resource "aws_internet_gateway" "igw" {
    vpc_id = ""
}

resource "aws_route_table" "public" {
    vpc_id = ""
    route {}
}

resource "aws_route_table_association" "public" {
    subnet_id = ""
    route_table_id = ""
}

resource "aws_security_group" "instance_sg" {
    name = ""
    vpc_id = ""
    ingress {}
    egress {}
}

resource "aws_iam_role" "ec2_role" {
    name = ""
    assume_role_policy = ""
}

resource "aws_iam_instance_profile" "ec2_instance_profile" {
    name = ""
    role = ""
}

resource "aws_spot_instance_request" "osm_node" {
    ami = ""
    instance_type = ""
    spot_price = ""
    wait_for_fulfillment = ""
    subnet_id = ""
    vpc_security_group_ids = ""
    iam_instance_profile = ""
    user_data = ""
}
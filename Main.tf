terraform {
    required_providers { //this is plugin
      aws = {
          source = "hashicorp/aws" //location where plugin is located
          version = "~> 3.27" //best practice is to use version not reqd
      }
    }
}

    provider "aws" { //providing details about the plugin
        profile = "default" // profile changes if there are multiple aws account
        region = "us-east-1"
    }

    resource "aws_instance" "app_server"{ 
        ami = "ami-0aeeebd8d2ab47354"  // platform or OS to use
        instance_type = "t2.micro" // server storage and memory config

        tags = {
            Name = var.instance_name
        }
    }

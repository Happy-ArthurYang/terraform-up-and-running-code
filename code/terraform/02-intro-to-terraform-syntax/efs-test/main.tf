terraform {
  required_version = ">= 1.0.0, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }


}

provider "aws" {
  region = "us-east-1"
}

resource "aws_efs_file_system" "efs" {
   for_each = toset([for name in var.efsnames:"${name}-${var.env}"])
   creation_token = each.key
   performance_mode = "generalPurpose"
   throughput_mode = "bursting"
   encrypted = "true"
 tags = {
     Name = each.key
   }
 }

resource "aws_efs_mount_target" "efs-mt4DB" {
   count = length(var.subnet_ids)
   file_system_id  = aws_efs_file_system.efs["DECODREDbEfs-dev"].id
   subnet_id = var.subnet_ids[count.index]
   security_groups = ["sg-040c4ead4674d622f"]
 }
 resource "aws_efs_mount_target" "efs-mt4Media" {
   count = length(var.subnet_ids)
   file_system_id  = aws_efs_file_system.efs["DECODRMediaEfs-dev"].id
   subnet_id = var.subnet_ids[count.index]
   security_groups = ["sg-040c4ead4674d622f"]
 }
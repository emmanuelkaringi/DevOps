#!/bin/bash

########
# Author: Emmanuel Kariithi
# Date: 08-05-2024
#
# Version: v1
#
# This script will report the AWS resource usage
########

#set -x

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

# List S3 buckets
echo "Print list of S3 Buckets"
aws s3 ls

# List EC2 instances
echo "Print list of EC2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# List AWS Lambda
echo "Print list of AWS Lambda"
aws lambda list-functions

#List IAM Users
echo "Print list of IAM Users"
aws iam list-users

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

#Steps to create a cron job to run this script every 24 hours:

# Open terminal.
# Type crontab -e and press Enter. This will open the cron jobs configuration file in the default text editor.
# Add the following line to the end of the file: 0 0 * * * /path/to/script.sh

#This cron job configuration runs the script at midnight (00:00) every day. The five fields in the cron job definition represent:

# Minute (0)
# Hour (0)
# Day of the month (* means every day)
# Month (* means every month)
# Day of the week (* means every day of the week)
# So 0 0 * * * means "at 00:00 on every day of every month and every day of the week".

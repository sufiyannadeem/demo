#!/bin/bash


####################
# author: sufiyan
# date: 19/09/2025
# version: v1
# #################


# this script is used to list EC2 instances,
# S3 buckets, IAM users, Lambda functions security groups.


set -e
set -o pipefail
set -x

timestamp=$(date "+%Y-%m-%d-%M")

echo "instances Id" 
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> /home/nsufiyan/lists/file-$timestamp.txt

aws s3 ls 


aws iam list-users 


aws lambda list-functions 



echo "security groups" 
aws ec2 describe-security-groups | jq '.SecurityGroups[].GroupId' >> /home/nsufiyan/lists/file-$timestamp.txt



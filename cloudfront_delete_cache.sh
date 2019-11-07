#!/bin/sh
aws configure set aws_access_key_id $1
aws configure set aws_secret_access_key $2
aws configure set region $3
response=`aws sts assume-role --role-arn "arn:aws:iam::583004276805:role/datalake-cloudfront-p-role" --role-session-name cloudfront-delete-cache-session`
echo response
#aws cloudfront create-invalidation --distribution-id E378R6TB0VOPAP --paths "/*"

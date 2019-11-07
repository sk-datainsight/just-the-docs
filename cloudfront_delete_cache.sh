#!/bin/sh
aws configure set aws_access_key_id $1
aws configure set aws_secret_access_key $2
aws configure set region $3
response=`aws sts assume-role --role-arn "arn:aws:iam::583004276805:role/datalake-cloudfront-p-role" --role-session-name cloudfront-delete-cache-session`
STS_SecretAccessKey=`jq '.Credentials.SecretAccessKey' $response`
STS_SessionToken=`jq '.Credentials.SessionToken' $response`
STS_AccessKeyId=`jq '.Credentials.AccessKeyId' $response`
echo $STS_SecretAccessKey
echo $STS_SessionToken
echo $STS_AccessKeyId
aws configure set aws_access_key_id $STS_AccessKeyId
aws configure set aws_secret_access_key $STS_SecretAccessKey
aws configure set region $3
aws configure set aws_session_token $STS_SessionToken
aws cloudfront create-invalidation --distribution-id E378R6TB0VOPAP --paths "/*"

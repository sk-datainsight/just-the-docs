#!/bin/sh
aws configure set aws_access_key_id $1
aws configure set aws_secret_access_key $2
aws configure set region $3
response=`aws sts assume-role --role-arn "arn:aws:iam::583004276805:role/datalake-cloudfront-p-role" --role-session-name cloudfront-delete-cache-session`
STS_SecretAccessKey=`echo $response | jq '.Credentials.SecretAccessKey'`
STS_SessionToken=`echo $response | jq '.Credentials.SessionToken'`
STS_AccessKeyId=`echo $response | jq '.Credentials.AccessKeyId'`
echo $STS_SecretAccessKey
echo $STS_SessionToken
echo $STS_AccessKeyId
aws_access_key_id=$STS_AccessKeyId
aws_secret_access_key=$STS_SecretAccessKey
aws configure set aws_access_key_id $aws_access_key_id
aws configure set aws_secret_access_key $aws_secret_access_key
aws configure set region $3
aws configure set aws_session_token $STS_SessionToken
aws configure list
aws s3 ls
#aws cloudfront create-invalidation --distribution-id E378R6TB0VOPAP --paths "/*"

#!/bin/sh
aws configure set aws_access_key_id $1
aws configure set aws_secret_access_key $2
aws configure set region $3
response=`aws sts assume-role --role-arn "arn:aws:iam::583004276805:role/datalake-cloudfront-p-role" --role-session-name cloudfront-delete-cache-session`
STS_SecretAccessKey=`echo $response | jq '.Credentials.SecretAccessKey' | xargs`
STS_SessionToken=`echo $response | jq '.Credentials.SessionToken' | xargs`
STS_AccessKeyId=`echo $response | jq '.Credentials.AccessKeyId' | xargs`
echo $STS_SecretAccessKey
echo $STS_SessionToken
echo $STS_AccessKeyId
echo "export AWS_ACCESS_KEY_ID=${STS_AccessKeyId}" >> $BASH_ENV
echo "export AWS_SECRET_ACCESS_KEY=${STS_SecretAccessKey}" >> $BASH_ENV
echo "export AWS_SESSION_TOKEN=${STS_SessionToken}" >> $BASH_ENV
source $BASH_ENV
#aws configure set aws_access_key_id ${STS_AccessKeyId}
#aws configure set aws_secret_access_key ${STS_SecretAccessKey}
#aws configure set region $3
#aws configure set aws_session_token ${STS_SessionToken}
#aws configure list
cat ~/.aws/credentials
aws s3 ls
#aws cloudfront create-invalidation --distribution-id E378R6TB0VOPAP --paths "/*"

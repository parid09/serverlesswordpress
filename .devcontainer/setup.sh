#!/usr/bin/env bash
# 1. Configure AWS CLI with your credentials
if ! aws sts get-caller-identity &> /dev/null; then
  aws configure
fi
# 2. (Optional) Create S3 bucket for Serverless Framework deployments
#    Replace BUCKET_NAME with your unique bucket
# aws s3 mb s3://BUCKET_NAME

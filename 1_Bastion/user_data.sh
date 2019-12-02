#!/usr/bin/env bash
# Allocate Elastic IP to Bastion host 
INSTANCE_ID=$(curl -s -m 60 http://169.254.169.254/latest/meta-data/instance-id)
aws --region ${REGION} ec2 associate-address --instance-id $INSTANCE_ID --allocation-id ${EIP_ID}
#!/bin/bash
CSV_FILE="/root/aws.csv"
ACCESS_KEY=$(awk -F, 'NR==2 {print $1}' $CSV_FILE | tr -d '\r')
SECRET_KEY=$(awk -F, 'NR==2 {print $2}' $CSV_FILE | tr -d '\r') 
echo "export AWS_ACCESS_KEY_ID=$ACCESS_KEY" >> /root/.bashrc
echo "export AWS_SECRET_ACCESS_KEY=$SECRET_KEY" >> /root/.bashrc
echo "export AWS_REGION=eu-north-1" >> /root/.bashrc
echo "export AWS_OUTPUT=yaml" >> /root/.bashrc
exec "$@"

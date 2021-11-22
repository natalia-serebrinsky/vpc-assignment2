#!/usr/bin/env bash

#user data cron that writes access logs to S3 every 1 hour
echo "0 * * * * aws s3 cp /var/log/nginx/access.log s3://access-logs-tf" > /var/spool/cron/crontabs/root

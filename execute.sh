#!/bin/bash
aws s3 cp s3://d3jslearning/index.html /var/www/html
/usr/sbin/httpd -D FOREGROUND

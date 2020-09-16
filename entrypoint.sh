#!/bin/sh
set -e
#set -o pipefail
cpCode=$1
path=$2
domainName=$3

# Build Jekyll
/bin/bash -l -c "bundle install"
/bin/bash -l -c "bundle exec jekyll build"

# Create private_key file from env variable
echo -e "${AKAMAI_PRIVATEKEY}" > /root/privatekey

# Upload to NetStorage
scp -i /root/privatekey -oHostKeyAlgorithms=+ssh-dss -r /github/workspace/${path} sshacs@${domainName}.scp.upload.akamai.com:/${cpCode}/${path}/
  
  

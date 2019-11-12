#!/usr/bin/env bash
sudo apt-get update -y
sudo apt-get upgrade 

mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
export PATH=~/.npm-global/bin:$PATH
source ~/.profile
npm install -g serverless

# set credentials
sls config credentials --provider aws --key $AWS_ACCESS_KEY_ID  --secret $AWS_SECRET_ACCESS_KEY
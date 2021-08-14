#!/bin/bash

RUN_CONTEXT_DIR="$(pwd)";

LOCAL_ROOT_DIR="/home/$(whoami)/scripts/_GitPages/strapicms-src/terraform-aws-modules-full";

echo "mkdir -p ${LOCAL_ROOT_DIR};";

mkdir -p ${LOCAL_ROOT_DIR};

cd ${LOCAL_ROOT_DIR};

pwd;

echo "Cloning All Terraform AWS Module Samples in to: ${LOCAL_ROOT_DIR}";

declare -A tfAwsSampleModuleGitRepos=(
[0]="https://github.com/terraform-aws-modules/terraform-aws-cloudfront" \
[1]="https://github.com/terraform-aws-modules/terraform-aws-rds-aurora" \
[2]="https://github.com/terraform-aws-modules/terraform-aws-eventbridge" \
[3]="https://github.com/terraform-aws-modules/terraform-aws-route53" \
[4]="https://github.com/terraform-aws-modules/terraform-aws-s3-bucket" \
[5]="https://github.com/terraform-aws-modules/terraform-aws-alb" \
[6]="https://github.com/terraform-aws-modules/terraform-aws-vpc" \
[7]="https://github.com/terraform-aws-modules/terraform-aws-eks" \
[8]="https://github.com/terraform-aws-modules/terraform-aws-ec2-instance" \
[9]="https://github.com/terraform-aws-modules/terraform-aws-apigateway-v2" \
[10]="https://github.com/terraform-aws-modules/terraform-aws-rds" \
[11]="https://github.com/terraform-aws-modules/terraform-aws-atlantis" \
[12]="https://github.com/terraform-aws-modules/terraform-aws-notify-slack" \
[13]="https://github.com/terraform-aws-modules/terraform-aws-transit-gateway" \
[14]="https://github.com/terraform-aws-modules/terraform-aws-autoscaling" \
[15]="https://github.com/terraform-aws-modules/terraform-aws-appsync" \
[16]="https://github.com/terraform-aws-modules/terraform-aws-step-functions" \
[17]="https://github.com/terraform-aws-modules/terraform-aws-security-group" \
[18]="https://github.com/terraform-aws-modules/terraform-aws-vpn-gateway" \
[19]="https://github.com/terraform-aws-modules/terraform-aws-elb" \
[20]="https://github.com/terraform-aws-modules/terraform-aws-redshift" \
[21]="https://github.com/terraform-aws-modules/terraform-aws-acm" \
[22]="https://github.com/terraform-aws-modules/terraform-aws-iam" \
[23]="https://github.com/terraform-aws-modules/terraform-aws-ecs" \
[24]="https://github.com/terraform-aws-modules/terraform-aws-pricing" \
[25]="https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table" \
[26]="https://github.com/terraform-aws-modules/terraform-aws-sns" \
[27]="https://github.com/terraform-aws-modules/terraform-aws-sqs" \
[28]="https://github.com/terraform-aws-modules/terraform-aws-cloudwatch" \
[29]="https://github.com/terraform-aws-modules/terraform-aws-key-pair" \
[30]="https://github.com/terraform-aws-modules/terraform-aws-customer-gateway" \
[31]="https://github.com/terraform-aws-modules/terraform-aws-ebs-optimized" \
[32]="https://github.com/terraform-aws-modules/atlantis-demo"
);

for i in "${!tfAwsSampleModuleGitRepos[@]}"
do
    echo "key  : $i";
    echo "val  : ${tfAwsSampleModuleGitRepos[$i]}";
    echo "Check for Existing Local Clone: ${LOCAL_ROOT_DIR}/${tfAwsSampleModuleGitRepos[$i]##*/}";
    if [[ -d "${LOCAL_ROOT_DIR}/${tfAwsSampleModuleGitRepos[$i]##*/}" ]];
    then
        echo "Found Local Clone on Filesystem: ${LOCAL_ROOT_DIR}/${tfAwsSampleModuleGitRepos[$i]##*/}";
        cd "${LOCAL_ROOT_DIR}/${tfAwsSampleModuleGitRepos[$i]##*/}";
        echo "git pull origin master;";
        git pull origin master;
        cd ${LOCAL_ROOT_DIR};
    else
        echo "Exec Bootstrap Clone For: ${tfAwsSampleModuleGitRepos[$i]}";
	    echo "git clone ${tfAwsSampleModuleGitRepos[$i]};";
        git clone ${tfAwsSampleModuleGitRepos[$i]};
    fi
done;

cd ${RUN_CONTEXT_DIR};

echo "All Terraform AWS Module Sample Repositores Cloned to Localhost Successfully!";
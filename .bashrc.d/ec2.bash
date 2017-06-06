#!/bin/sh
# Commented out JAVA_HOME for now, since it seems to interfere with /usr/bin/java
#export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Home"

if [ -f "$HOME/.ec2/pk-55*.pem" ]; then
  export EC2_PRIVATE_KEY
  EC2_PRIVATE_KEY="$(/bin/ls "$HOME/.ec2/pk-55*.pem")"
  export EC2_CERT
  EC2_CERT="$(/bin/ls "$HOME/.ec2/cert-55*.pem")"
fi

export EC2_HOME="/usr/local/Library/LinkedKegs/ec2-api-tools/jars"
export AWS_IAM_HOME="/usr/local/Cellar/aws-iam-tools/HEAD/jars"
export AWS_CREDENTIAL_FILE="$HOME/.aws-credentials-master"


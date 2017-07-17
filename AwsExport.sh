aws_profile=$1

echo $aws_profile

aws_access_key_id=$(aws configure get aws_access_key_id --profile ${aws_profile})
aws_secret_access_key=$(aws configure get aws_secret_access_key --profile ${aws_profile})
aws_region=$(aws configure get region --profile ${aws_profile})
echo $aws_access_key_id
echo $aws_secret_access_key
echo $aws_region

export AWS_ACCESS_KEY_ID=${aws_access_key_id}
export AWS_SECRET_ACCESS_KEY=${aws_secret_access_key}
export AWS_DEFAULT_REGION=${aws_region}


# Create an S3 bucket
aws s3 mb s3://sam-cli-hello-world-02.01.2022 --profile [profile]

# Package cloudformation
sam package --s3-bucket sam-cli-hello-world-02.01.2022 --template-file template.yaml \
--output-template-file generated/template-generated.yaml --profile [profile]

# Deploy
sam deploy --template-file generated/template-generated.yaml --stack-name hello-world-sam --capabilities CAPABILITY_IAM --profile [profile]

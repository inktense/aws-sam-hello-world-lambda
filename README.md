# Hello-world NodeJS Lambda Function created with SAM

A basic Hello World Lambda function in Typescript using Serverless Application Model (SAM).

--------------------------------
## Requirements
--------------------------------

[AWS SAM CLI](https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/serverless-sam-cli-install-mac.html)

## Usage
--------------------------------
Run
``` 
npm install & npm run build
```

Create an S3 bucket to store the template
```
aws s3 mb s3://sam-cli-hello-world-02.01.2022 
```
Package the code 
```
sam package --s3-bucket sam-cli-hello-world-02.01.2022 --template-file template.yaml \
--output-template-file generated/template-generated.yaml
```

Deploy the code 
```
sam deploy --template-file generated/template-generated.yaml --stack-name hello-world-sam --capabilities CAPABILITY_IAM 
```
All the coomands cand be found in the `commands.sh` file.

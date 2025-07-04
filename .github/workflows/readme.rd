cloudwatch-archival/
├── .github/
│   └── workflows/
│       └── deploy.yml              # CI/CD pipeline
├── lambda/
│   └── lambda_function.py          # Python source code
├── modules/
│   ├── eventbridge/
│   ├── iam/
│   ├── lambda/
│   └── s3/
├── main.tf                         # Root module
├── variables.tf
└── backend.tf                      # Optional, for remote state


Secrets Required (Set in GitHub → Settings → Secrets → Actions)
AWS_ACCESS_KEY_ID

AWS_SECRET_ACCESS_KEY

✅ Lambda Deployment Strategy
The workflow:

Zips the latest code in /lambda

Uploads via terraform apply

Binds it with EventBridge

Auto-creates S3 bucket & lifecycle policy

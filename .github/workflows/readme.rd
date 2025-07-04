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

# Secrets Manager Integration

- Stored credentials in AWS Secrets Manager
- Accessed using IAM role attached to EC2
- Retrieved secrets using AWS CLI during deployment

Example:
aws secretsmanager get-secret-value --secret-id my-app-secret

#!/bin/bash

echo "Starting application..."

# Fetch secret (optional demo)
SECRET=$(aws secretsmanager get-secret-value \
    --secret-id my-app-secret \
    --query SecretString \
    --output text \
    --region us-east-1)

echo "Secret retrieved successfully"

# Start Apache
systemctl start httpd
systemctl enable httpd

echo "Application deployed successfully"

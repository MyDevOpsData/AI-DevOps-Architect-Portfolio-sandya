# Architecture Overview

## Static Website Hosting

User → Route53 → S3 → CloudFront

## Migration Phase

User → EC2 → Web Server

## Key Points

- Used S3 for static hosting
- Used EC2 for dynamic hosting during migration
- Route53 for domain management
- CloudFront for performance (optional)

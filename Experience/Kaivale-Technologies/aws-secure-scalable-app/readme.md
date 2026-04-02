## Kaivale Technologies (Jan 2014 – May 2016)
**Project WideOrbit**

**This section reflects my early experience in AWS and DevOps at Kaivale Technologies, where I began my professional journey in cloud engineering.**

This project showcases my foundational contributions in cloud infrastructure, deployment automation, and system operations.

- Designed a secure and scalable AWS architecture using ALB, Auto Scaling, and CloudWatch  
- Implemented CI/CD using AWS CodePipeline, CodeBuild, and CodeDeploy  
- Used AWS Secrets Manager for secure credential management  
- Ensured high availability and automation of deployments  


Key Achievements
	•	Implemented fully automated CI/CD pipeline using AWS native services
	•	Designed scalable and highly available architecture
	•	Integrated secure secrets management using AWS Secrets Manager
	•	Reduced manual deployment effort and improved reliability
	•	Built production-like infrastructure using best practices
⸻
🎯 Key Learnings
	•	AWS native DevOps tools (CodePipeline, CodeBuild, CodeDeploy)
	•	Infrastructure scaling using Auto Scaling Groups
	•	Monitoring and alerting with CloudWatch
	•	Secure credential management using Secrets Manager
	•	Designing highly available cloud architectures
  -------------------------------------------------------------------------------------------------------------------------------------------------
AWS Secure Scalable CI/CD Architecture (DevOps Project):  
Project Structure: 
aws-secure-scalable-app/
│
├── index.html
├── buildspec.yml
├── appspec.yml
├── scripts/
│   ├── install.sh
│   └── start.sh
├── architecture.md
├── secrets-integration.md
└── README.md
---------------------------------------------------------------------------------------------------------------------------------------------
## 🏗️ Architecture Diagram


                +---------+
                |  Users  |
                +----+----+
                     |
                     v
        +----------------------------+
        | Application Load Balancer  |
        |           (ALB)            |
        +------------+---------------+
                     |
        +------------+------------+
        |                         |
        v                         v
+----------------+      +----------------+
|  EC2 Instance  |      |  EC2 Instance  |
|  (App Server)  |      |  (App Server)  |
+--------+-------+      +--------+-------+
         |                       |
         +----------+------------+
                    v
        +------------------------+
        |   Auto Scaling Group   |
        +------------------------+
----------------------------------------------------------------------------------------------------------------------------------------------
AWS Services Used :
	•	VPC – Custom network setup
	•	Subnets – Public & Private
	•	Internet Gateway – External connectivity
	•	Application Load Balancer (ALB) – Traffic distribution
	•	Auto Scaling Group (ASG) – Dynamic scaling
	•	EC2 – Application hosting
	•	CloudWatch – Monitoring & alarms
	•	CodePipeline – CI/CD orchestration
	•	CodeBuild – Build automation
	•	CodeDeploy – Deployment automation
	•	S3 – Artifact storage
	•	IAM – Secure access control
	•	Secrets Manager – Secure credential storage

⸻

🔐 Security Implementation
	•	Used AWS Secrets Manager to store sensitive data (passwords, API keys)
	•	Attached IAM roles to EC2 instances for secure access
	•	Avoided hardcoding credentials in code or scripts
	•	Ensured secure communication within VPC

⸻

🔄 CI/CD Pipeline

Source Stage
	•	Integrated GitHub repository with CodePipeline

Build Stage
	•	Used CodeBuild with buildspec.yml
	•	Automated build process

Deploy Stage
	•	Used CodeDeploy with appspec.yml
	•	Deployed application to EC2 instances

⸻

📈 Auto Scaling & Monitoring
	•	Configured Auto Scaling Group:
	•	Min: 2 instances
	•	Max: 5 instances
	•	CloudWatch Alarms:
	•	CPU > 70% → Scale Out
	•	CPU < 30% → Scale In
	•	Ensured high availability and fault tolerance

⸻

⚖️ Load Balancing
	•	Implemented Application Load Balancer
	•	Distributed traffic across multiple EC2 instances
	•	Enabled health checks for reliability
--------------------------------------------------------------------------------------------------------------------------------------------
Thank you 

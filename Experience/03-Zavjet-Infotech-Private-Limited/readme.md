**Company : ZAVJET INFOTECH
url: https://www.zavjetinfotech.com/
Client: [General electric](https://www.ge.com/contact)**



### GoldString Platform – Infrastructure Automation & DevOps

This project represents a long-term engagement (4 years) where I worked on building and managing scalable, secure, and automated cloud infrastructure using AWS and modern DevOps practices.

---

## 🏗️ Architecture Overview

Designed a highly available and scalable architecture:

User → Route53 → ALB → Auto Scaling Group → EC2 / Kubernetes  
                                     ↑  
                             CloudWatch (Monitoring)  

CI/CD:
GitHub → Jenkins → Docker → Kubernetes  

---
                    +------------------+
                    |      Users       |
                    +--------+---------+
                             |
                             v
                    +------------------+
                    |     Route53      |
                    +--------+---------+
                             |
                             v
            +------------------------------------+
            |  Application Load Balancer (ALB)   |
            +---------------+--------------------+
                            |
        +-------------------+-------------------+
        |                                       |
        v                                       v
+----------------------+            +----------------------+
|   EC2 (K8s Node)     |            |   EC2 (K8s Node)     |
|   Docker Containers  |            |   Docker Containers  |
+----------+-----------+            +----------+-----------+
           |                                   |
           +---------------+-------------------+
                           |
                           v
               +----------------------------+
               |     Kubernetes Cluster     |
               |   (Pods / Services / Helm) |
               +-------------+--------------+
                             |
                             v
                +---------------------------+
                |     Auto Scaling Group    |
                +-------------+-------------+
                              |
                              v
                +---------------------------+
                |     CloudWatch Monitoring |
                +---------------------------+

------------------------------------------------------

CI/CD PIPELINE:

GitHub → Jenkins → Build → Docker → ECR → Kubernetes Deploy

------------------------------------------------------

INFRASTRUCTURE:

Terraform → VPC → EC2 → ALB → ASG → IAM → CloudWatch

## ⚙️ Technologies Used

### ☁️ Cloud & Infrastructure
- AWS (EC2, VPC, ALB, Auto Scaling, S3, IAM, Route53, CloudWatch, EBS, ECR)

### 🏗️ Infrastructure as Code
- Terraform (end-to-end infrastructure provisioning)

### ⚙️ DevOps & CI/CD
- Jenkins  
- Git & GitHub  

### 📦 Containerization & Orchestration
- Docker  
- Kubernetes  
- Helm  

### 📊 Monitoring & Observability
- Prometheus  
- Grafana  

### 🔐 Security & Quality
- IAM  
- SonarQube  
- JFrog Artifactory  

---

## 🚀 Key Contributions

- Designed and provisioned AWS infrastructure using Terraform  
- Built reusable Terraform modules for scalable deployments  
- Managed VPC, subnets, route tables, and security groups  
- Implemented Auto Scaling and ALB for high availability  
- Containerized applications using Docker and deployed on Kubernetes  
- Built CI/CD pipelines using Jenkins for automated deployments  
- Managed Docker images using AWS ECR  
- Implemented monitoring using Prometheus and Grafana  
- Configured CloudWatch for alerts and system monitoring  
- Managed DNS and routing using Route53  
- Integrated SonarQube for code quality checks  
- Managed artifacts using JFrog Artifactory  
- Automated deployments using Helm charts  

---

## 📈 Key Achievements

- Automated infrastructure provisioning using Terraform  
- Improved deployment efficiency and reduced manual effort  
- Built scalable and highly available cloud architecture  
- Standardized CI/CD pipelines across environments  
- Enhanced monitoring and observability of systems  
- Successfully supported long-term production workloads  

---

## 🎯 Key Learnings

- Advanced Terraform (modules, variables, state management)  
- Kubernetes deployment and scaling strategies  
- CI/CD pipeline design and optimization  
- Cloud architecture design for scalability and reliability  
- Monitoring and alerting best practices  
- Secure infrastructure design using IAM  

---

## 📌 Note

This project reflects my extensive hands-on experience over 4 years, focusing on infrastructure automation, scalable architecture design, and modern DevOps practices using AWS, Terraform, and Kuberne

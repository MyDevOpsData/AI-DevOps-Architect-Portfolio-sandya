“Implemented end-to-end CI/CD pipeline for a microservices application using Azure DevOps, Docker, Kubernetes (AKS), and GitOps (Argo CD).”

This project implements CI/CD for a multi-microservice application (Python, Node.js, .NET).
Source code is stored in Azure Repos, CI is handled using Azure Pipelines, and container images are pushed to Azure Container Registry.
CD is implemented using GitOps with Argo CD, deploying applications to AKS.
Automation ensures faster, reliable, and consistent deployments.

        Developer
            |
            v
     Azure Repos (Git)
            |
            v
   Azure Pipelines (CI)
   ----------------------
   | Build Docker Image |
   | Push to ACR        |
   ----------------------
            |
            v
   Update YAML (Script)
            |
            v
        Git Repo
            |
            v
        Argo CD (GitOps)
            |
            v
     AKS (Kubernetes)
            |
            v
     Application Running

DevOps Tools
Version Control: Azure Repos / GitHub
CI/CD: Azure Pipelines
Containerization: Docker
Registry: Azure Container Registry
Orchestration: Kubernetes (AKS)
GitOps: Argo CD
💻 Languages / Services
Python, Node.js, .NET
Redis (cache), PostgreSQL (DB)

Architecture (Simple Explanation)

👉 Microservices architecture:

Voting App (Python)
Result App (Node.js)
Worker (.NET)
Redis → Temporary storage
PostgreSQL → Final storage

** End-to-End Flow **
Step 1: Developer Change
Developer commits code to Azure Repo
Step 2: CI Trigger
Azure Pipeline triggers automatically
Step 3: Build Stage
Code is tested (optional)
Docker image is created
Step 4: Push Stage
Image pushed to ACR
Step 5: Update Stage
Shell script updates Kubernetes YAML with new image tag
Step 6: GitOps Trigger
Argo CD detects change in repo
Step 7: Deployment
Argo CD deploys updated image to AKS
Step 8: Application Live
New version available without manual intervention

** CI Pipeline Steps**
Trigger on code commit
Build Docker image
Run validations (optional)
Push image to ACR
Tag image with build ID

**🚀  CD Pipeline Steps (GitOps)**
Update Kubernetes manifest (image tag)
Commit changes to repo
Argo CD detects change
Deploy to AKS automatically
Ensure self-healing (drift correction)
**💡  Key Features / Highlights**
Path-based triggers (only affected service builds)
Multi-language CI (Python, Node.js, .NET)
Self-hosted agent setup
GitOps deployment (no direct cluster access)
Auto rollback & drift correction
Image versioning using build ID
**💰 Costing (Azure)**
Main Cost Components:
AKS Cluster (VM nodes)
Azure Container Registry
VM for self-hosted agent
Storage + Networking
Approx (Basic setup):
AKS: ₹3000–8000/month
ACR: ₹500–1500/month
VM Agent: ₹1000–3000/month

👉 Total: ~₹5K–12K/month (basic setup)

Simple 5-Line Explanation

“Worked on a microservices-based application where I implemented CI/CD using Azure DevOps.
On code commit, pipelines build Docker images and push them to ACR.
We used GitOps with Argo CD to deploy applications to AKS.
A script updates Kubernetes manifests with new image versions.
This ensured automated, reliable, and scalable deployments.”

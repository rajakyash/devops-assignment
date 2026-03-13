# DevSecOps CI/CD Pipeline Project

## Project Overview

This project demonstrates a **DevSecOps CI/CD pipeline** using Jenkins, Docker, Terraform, and Trivy.

The pipeline automatically:

* Builds the application using Docker
* Runs the application container
* Performs security scanning on Terraform infrastructure
* Initializes infrastructure configuration

---

## Technologies Used

* Jenkins – CI/CD automation server
* Docker – Containerization platform
* Terraform – Infrastructure as Code
* Trivy – Security scanning tool
* GitHub – Source code repository

---

## Project Structure

```
devops-assignment/
│
├── app/                # Application source code
├── Dockerfile          # Docker image configuration
├── docker-compose.yml
├── Jenkinsfile         # CI/CD pipeline
├── terraform/          # Infrastructure as Code
│   ├── main.tf
│   └── provider.tf
└── README.md
```

---

## CI/CD Pipeline Stages

1. **Source Code Checkout** – Jenkins pulls code from GitHub
2. **Docker Build** – Builds the application container
3. **Container Deployment** – Runs the container locally
4. **Security Scan** – Trivy scans Terraform configurations
5. **Terraform Initialization** – Prepares infrastructure code

---

## Security Scanning

The pipeline uses **Trivy** to detect security misconfigurations in Terraform files.

Example vulnerabilities detected:

* CRITICAL: Open security group rules
* HIGH: Unrestricted ingress access
* LOW: Missing rule description

After detection, Terraform code was updated to a **secured configuration**.

---

## Application Access

After pipeline execution, the application runs locally:

```
http://localhost:3000
```

---


## GenAI Usage Report

Generative AI tools were used during development for:

* Debugging Jenkins pipeline errors
* Understanding Docker container setup
* Fixing Terraform configuration issues
* Interpreting Trivy security scan results

The AI tool assisted in troubleshooting and guidance, while all configuration, testing, and implementation were performed by the student.

---




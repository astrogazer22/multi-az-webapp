# Multi AZ Available Web App on AWS with Terraform

# 🌐 AWS Terraform Infrastructure Project

This project provisions a production-grade infrastructure on AWS using **Terraform**, with a focus on scalability, high availability, and security.

---

## 📌 Features

- ✅ VPC with public and private subnets (multi-AZ)
- ✅ EC2 instances in private subnet behind an Application Load Balancer
- ✅ Auto Scaling Group
- ✅ RDS (MySQL/PostgreSQL) in private subnet
- ✅ S3 bucket for static storage/log backups
- ✅ IAM roles & policies for secure access
- ✅ VPC Endpoint for S3 access without public internet
- ✅ Secure architecture diagram

---

## 🏗 Architecture

![Architecture Diagram]

<img width="1112" height="717" alt="Architecture" src="https://github.com/user-attachments/assets/3ed09574-3a14-4cfc-b195-f2dae0b86a26" />


---

## 🚀 Getting Started

### 📦 Prerequisites

- [Terraform CLI](https://developer.hashicorp.com/terraform/downloads)
- AWS Account & IAM credentials (with admin access)
- Git installed

---

## 🔧 Usage

1. **Clone the repo**

```bash
git clone https://github.com/yourusername/aws-infra-project.git
cd aws-infra-project

```

2. Initialize Terraform

terraform init


3. Customize variables

Update variables.tf with your custom values

4. Plan and Apply

terraform plan
terraform apply

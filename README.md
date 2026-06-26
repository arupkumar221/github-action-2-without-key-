# 🚀 AWS EC2 Deployment using Terraform & GitHub Actions (IAM Role - OIDC)

## 📌 Project Overview

This project demonstrates how to provision an Amazon EC2 instance on AWS using Terraform and automate the deployment with GitHub Actions.

Instead of using AWS Access Keys, this project uses **AWS IAM Role with OpenID Connect (OIDC)**, which is the recommended and secure authentication method for GitHub Actions.

---

## 🛠️ Technologies Used

- Terraform
- GitHub Actions
- AWS IAM Role (OIDC)
- Amazon EC2
- Git
- GitHub

---

## 📂 Project Structure

```
terraform-ec2/
│
├── main.tf
├── README.md
│
└── .github/
    └── workflows/
        └── deploy.yml
```

---

## ☁️ AWS Resources Created

- Amazon EC2 Instance

---

## 🔐 Authentication Method

This project uses **GitHub OIDC (OpenID Connect)** to authenticate with AWS.

No AWS Access Key ID or Secret Access Key is stored in GitHub.

GitHub Actions assumes an IAM Role and receives temporary AWS credentials during the workflow execution.

---

## ⚙️ GitHub Actions Workflow

The pipeline performs the following steps:

1. Checkout Repository
2. Setup Terraform
3. Authenticate to AWS using IAM Role (OIDC)
4. Terraform Init
5. Terraform Validate
6. Terraform Plan
7. Terraform Apply

---

## 🔑 GitHub Secret Required

| Secret Name | Description |
|-------------|-------------|
| AWS_ROLE_ARN | IAM Role ARN used by GitHub Actions |

Example:

```
AWS_ROLE_ARN=arn:aws:iam::123456789012:role/GitHubActionsTerraformRole
```

---

## 🚀 Deployment Workflow

```
Developer
     │
     ▼
Push Code
     │
     ▼
GitHub Repository
     │
     ▼
GitHub Actions
     │
     ▼
Assume IAM Role (OIDC)
     │
     ▼
Terraform Init
     │
     ▼
Terraform Validate
     │
     ▼
Terraform Plan
     │
     ▼
Terraform Apply
     │
     ▼
AWS EC2 Instance
```

---

## ▶️ How to Use

Clone the repository:

```bash
git clone https://github.com/<your-github-username>/<repository-name>.git
```

Go to the project:

```bash
cd <repository-name>
```

Push your changes:

```bash
git add .
git commit -m "Deploy EC2 using Terraform"
git push origin main
```

GitHub Actions will automatically deploy the EC2 instance.

---

## 📸 Project Output

After a successful workflow:

- ✅ GitHub Actions completed successfully
- ✅ IAM Role authentication successful
- ✅ Amazon EC2 instance created

---

## 📚 Learning Outcomes

- Infrastructure as Code (Terraform)
- GitHub Actions CI/CD
- AWS IAM Role Authentication
- OpenID Connect (OIDC)
- Secure Cloud Deployment
- AWS EC2 Provisioning

---

## 👨‍💻 Author

**Arup Dash**

Aspiring DevOps Engineer

### Skills

- AWS
- Terraform
- GitHub Actions
- Jenkins
- Docker
- Kubernetes
- Linux
- Git

⭐ If you found this project useful, don't forget to star the repository!

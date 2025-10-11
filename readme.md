---

# 🚀 WordPress Deployment with Terraform & Docker

This project automates the deployment of a WordPress site with a MySQL database using **Terraform** and the **Docker provider**. It provisions Docker containers, networks, and volumes required to run WordPress locally or on a server.

---

## 📌 Overview

- **Terraform** for Infrastructure as Code (IaC)  
- **Docker** for containerized deployment  
- Automated provisioning of **WordPress + MySQL**  
- Persistent storage for MySQL data  
- Simple, reproducible setup  

---

## 📂 Project Structure

```
WordPressDeployment/
├── main.tf              # Main Terraform configuration
├── variables.tf         # Terraform input variables
├── terraform.tfvars     # Variable values
├── outputs.tf           # Terraform output values
├── .terraform.lock.hcl  # Provider lock file
├── mysql_data/          # MySQL persistent storage
└── terraform.exe        # Terraform binary (Windows)
```

---

## 🛠 Requirements

Before starting, ensure you have:

- ✅ Docker installed and running  
- ✅ Terraform installed (latest version recommended)  
- ✅ Internet connection to pull Docker images  

---

## ⚙️ Setup & Usage

### 1️⃣ Initialize Terraform

```bash
.\terraform.exe init
```
Initializes the Terraform working directory and downloads required providers.

### 2️⃣ View the Execution Plan

```bash
.\terraform.exe plan
```
Shows what resources Terraform will create or modify.

### 3️⃣ Deploy the Containers

```bash
.\terraform.exe apply
```
Confirm with `yes` when prompted.

### 4️⃣ Access WordPress

Once deployed, open your browser and visit:  
**http://localhost:8080**

---

## 📜 Terraform Commands

| Command             | Description                                 |
|---------------------|---------------------------------------------|
| `terraform init`    | Initializes Terraform configuration         |
| `terraform plan`    | Previews changes before applying            |
| `terraform apply`   | Creates or updates infrastructure           |
| `terraform destroy` | Removes created infrastructure              |

---

## 📦 Resources Created

- Docker **Network** for container communication  
- **MySQL Container** (database backend for WordPress)  
- **WordPress Container** (CMS platform)  
- Persistent **Volume** for MySQL data  

---

## 🔮 Future Improvements

- Add **SSL support** with Let's Encrypt  
- Deploy to **AWS/GCP/Azure** using Terraform cloud providers  
- Add **automated MySQL backups**  
- Configure **Docker Compose** as an alternative  

---

## 📄 License

This project is licensed under the **MIT License**.

---

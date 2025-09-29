# WordPress Deployment with Terraform & Docker

This project automates the deployment of a **WordPress** site with a **MySQL database** using **Terraform** and the **Docker provider**. It provisions Docker containers, networks, and volumes required to run WordPress locally or on a server.

---

## 📌 Overview

- **Terraform** for Infrastructure as Code (IaC)
- **Docker** for containerized deployment
- **Automated provisioning** of WordPress + MySQL
- **Persistent storage** for MySQL data
- Simple, reproducible setup

---

## 📂 Project Structure

```

WordPressDeployment/
│── main.tf               # Main Terraform configuration
│── variables.tf          # Variables used in Terraform
│── terraform.tfvars      # Variable values
│── outputs.tf            # Terraform outputs
│── .terraform.lock.hcl   # Provider lock file
│── mysql\_data/           # MySQL persistent storage
│── terraform.exe         # Terraform binary (Windows)

````

---

## 🛠 Requirements

Before starting, ensure you have:
- [Docker](https://docs.docker.com/get-docker/) installed and running
- [Terraform](https://developer.hashicorp.com/terraform/downloads) installed (latest version recommended)
- Internet connection to pull Docker images

---

## ⚙️ Setup & Usage

### 1️⃣ Initialize Terraform
```powershell
.\terraform.exe init
````

Initializes the Terraform working directory and downloads required providers.

### 2️⃣ View the Execution Plan

```powershell
.\terraform.exe plan
```

Shows what resources Terraform will create or modify.

### 3️⃣ Deploy the Containers

```powershell
.\terraform.exe apply
```

Confirm with `yes` when prompted.

### 4️⃣ Access WordPress

Once deployed, open:

```
http://localhost:8080
```

---

## 📜 Commands Used

| Command             | Description                         |
| ------------------- | ----------------------------------- |
| `terraform init`    | Initializes Terraform configuration |
| `terraform plan`    | Previews changes before applying    |
| `terraform apply`   | Creates or updates infrastructure   |
| `terraform destroy` | Removes created infrastructure      |

---

## 📦 Resources Created

* **Docker Network** for container communication
* **MySQL Container** (database backend for WordPress)
* **WordPress Container** (CMS platform)
* **Persistent Volume** for MySQL data

---

## 🔮 Future Improvements

* Add SSL support with Let's Encrypt
* Deploy to AWS/GCP/Azure using Terraform cloud providers
* Add automated MySQL backups
* Configure Docker Compose alternative

---

## 📄 License

This project is licensed under the [MIT License](LICENSE).

```

---

#


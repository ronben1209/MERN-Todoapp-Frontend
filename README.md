# MERN Todo App - Frontend (Cloud-Native Deployment)

A modern full-stack MERN task management application featuring an optimized production-grade deployment architecture leveraging **AWS EKS**, **Docker**, **Jenkins CI/CD**, and **Kubernetes**.

## 🚀 Architecture & Deployment Flow
1. **Source Code Management:** Code changes pushed to GitHub.
2. **CI/CD Automation:** Jenkins orchestrates the pipeline, running repository clones and code quality analysis via **SonarQube**.
3. **Containerization:** A multi-stage `node:18-alpine` Docker build compiles the Vite/React source code into static assets, serving them efficiently using `serve`.
4. **Artifact Registry:** Container images are automatically built and pushed to **Docker Hub**.
5. **Orchestration:** Jenkins connects to **AWS EKS** via secure AWS credentials and deploys the application using Kubernetes manifests (`Deployment` and `LoadBalancer` Service).

## 🛠️ Tech Stack
* **Frontend:** React, Vite, JavaScript
* **Containerization:** Docker (Multi-stage builds)
* **CI/CD:** Jenkins, SonarQube
* **Orchestration & Cloud:** Kubernetes (EKS), AWS LoadBalancer

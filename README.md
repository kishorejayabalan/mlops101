# mlops101 — MLOps End‑to‑End on AWS

A hands‑on **end‑to‑end Machine Learning Operations (MLOps)** project that demonstrates the lifecycle of a machine learning model — from development and training to packaging, CI/CD automation, and deployment — using **AWS services**, Docker, and GitHub Actions.

🚀 This repository is designed as a practical learning and reference project for building **production‑grade ML systems**.

---

## 🧠 What This Project Does

This project implements a complete MLOps workflow:

- Trains a machine learning model (e.g., California Housing dataset)
- Serializes the trained model for reuse
- Exposes the model via an API
- Packages the application using Docker
- Automates testing and builds using GitHub Actions
- Supports deployment to AWS infrastructure

---

## 📁 Repository Structure

```
mlops101/
├── .github/workflows/        # CI/CD pipelines (GitHub Actions)
├── src/                     # Model training, inference, API logic
├── tests/                   # Unit and integration tests
├── Dockerfile               # Container definition
├── requirements.txt         # Python dependencies
├── housing.pkl              # Trained ML model artifact
├── .gitignore
├── .dockerignore
└── README.md
```

---

## 🛠️ Tech Stack

- **Python 3.9**
- **Scikit‑learn** for ML modeling
- **FastAPI** (or Flask) for model serving
- **Docker** for containerization
- **GitHub Actions** for CI/CD
- **AWS (ECR, ECS/Lambda, API Gateway)** for deployment

---

## 🚀 Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/kishorejayabalan/mlops101.git
cd mlops101
```

---

### 2. Create Virtual Environment

```bash
python -m venv venv
source venv/bin/activate   # macOS/Linux
venv\Scripts\activate      # Windows
pip install -r requirements.txt
```

---

### 3. Train the Model

```bash
python src/train.py
```

This generates a serialized model file (e.g., `housing.pkl`).

---

### 4. Run Tests

```bash
pytest
```

---

## 🐳 Docker Usage

### Build the Image

```bash
docker build -t mlops101-api .
```

### Run the Container

```bash
docker run -p 8000:8000 mlops101-api
```

### Test the API

```bash
curl -X POST http://localhost:8000/predict \
  -H "Content-Type: application/json" \
  -d '{"features": [8.3252, 41, 6.984, 1.023, 322, 2.555, 37.88, -122.23]}'
```

---

## 🔄 CI/CD Pipeline

GitHub Actions automate the following:

- Dependency installation
- Unit testing
- Docker image build
- Optional push to Amazon ECR
- Deployment to AWS compute services

CI/CD workflows are located in:

```
.github/workflows/
```

---

## ☁️ AWS Deployment (High‑Level)

Supported deployment patterns:

- **ECR + ECS (Fargate)** — scalable container deployment
- **Lambda + API Gateway** — serverless inference
- **App Runner** — fully managed container hosting

AWS credentials should be stored securely using **GitHub Secrets**.

---

## 🧪 Testing Strategy

- Model output validation
- API contract testing
- Regression testing during CI

Run locally using:

```bash
pytest -q
```

---

## 📌 MLOps Best Practices Demonstrated

- Reproducible ML training
- Model artifact versioning
- Containerized inference
- CI/CD automation
- Separation of training and serving logic

---

## 🔐 Security Notes

- Do NOT commit secrets or credentials
- Use AWS IAM roles and GitHub Secrets
- Follow least‑privilege access policies

---

## 🤝 Contributions

Contributions are welcome. Suggested enhancements:

- Model monitoring & drift detection
- Feature store integration
- MLflow or SageMaker tracking
- Blue‑green deployments

---


---

## 👤 Author

**Kishore Jayabalan**  


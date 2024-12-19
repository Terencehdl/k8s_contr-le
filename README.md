Context:
I was tasked with deploying a user management application for a streaming platform. The objective? Set up three microservices, guarantee their availability, and manage scalability. Here's how I tackled this mini-project:

🔹 Application to deploy:
- A FastAPI service to manage users.
- A PostgreSQL database to store information.
- A PGAdmin administration interface to manage the database.

⚙️ Key implementation steps :

1️⃣ Define Kubernetes objects:
- I chose the objects according to need:
- StatefulSet for PostgreSQL (persistent data).
- Deployment for FastAPI and PGAdmin (stateless services).
- PersistentVolumeClaims and StorageClass to manage shared storage.

2️⃣ Managing scalability:
- Set up a HorizontalPodAutoscaler (HPA) for the FastAPI service.
- Minimum of 3 Pods and maximum of 6 Pods, with automatic scalability from 70% CPU utilization.

3️⃣ SSL certificates for security:
- Configure Let's Encrypt to enable HTTPS on the FastAPI application.

4️⃣ Backup strategy:
- Backup cluster data with K3s.
- Backup of microservices logs and configurations.

5️⃣ Multi-tool deployment:
- Infrastructure deployment via three different methods:
- Standard YAML files in the standard namespace.
- Helm Charts to automate deployments in the helm namespace.
- Kustomize to adapt configurations in the kustomize namespace.

📂 Deliverables:
- All YAML files, Helm Charts, and Kustomize configurations.
- FastAPI, PostgreSQL and PGAdmin service logs.
- ETCD database backup to guarantee cluster restoration.

🎯 Result:
- A robust and secure Kubernetes architecture capable of handling scalability.
- Services securely exposed via Ingress with HTTPS.
- Data backed up and ready to restore if needed.

🛠️ Tools used :
- Kubernetes (YAML, Helm, Kustomize).
- K3s for cluster management.
- FastAPI, PostgreSQL, PGAdmin.
- Let's Encrypt for HTTPS.

💡 What I learned:
This project allowed me to work on the fundamentals of Kubernetes: deployment, scalability, resource management, and security. Helm and Kustomize are proving to be very complementary for industrializing deployments while remaining flexible.


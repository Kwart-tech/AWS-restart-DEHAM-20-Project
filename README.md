🖥️ Highly Available, Scalable & Fault-Tolerant WordPress Ticketing Platform on AWS

 📜 Project Overview
This project aims to deploy a WordPress-based event ticketing platform on AWS with high availability, scalability, fault tolerance, and strong security measures. The architecture leverages AWS Free Tier to minimize costs (~$5/month) while ensuring optimal performance and data protection.

---

🗂️ Architecture Diagram
![image](https://github.com/user-attachments/assets/cb261650-fd5d-4423-9bda-c86d4038ccb5)

---

🛠️ AWS Services & Tools Used
- VPC (Virtual Private Cloud): Network isolation with public and private subnets
- EC2 (Elastic Compute Cloud): WordPress application servers with Auto Scaling
- RDS (Relational Database Service): Multi-AZ MySQL database for high availability
- ALB (Application Load Balancer): Distributing traffic across EC2 instances
- CloudFront (Content Delivery Network): Caching and speeding up content delivery
- S3 (Simple Storage Service): Storing static files and media content
- Route 53 (DNS): Domain management and traffic routing
- WAF (Web Application Firewall): Protecting against common web threats
- IAM (Identity & Access Management): Secure access control
- ACM (AWS Certificate Manager): SSL/TLS certificates for encrypted traffic

---

🚀 Provisioning Steps

1️⃣ Network Setup (VPC)
- Create a VPC with two public subnets and two private subnets across two availability zones (AZs).
- Add an Internet Gateway (IGW) for public internet access.
- Configure Route Tables for proper traffic flow between subnets.


2️⃣ Security & Access Management
- Create Security Groups to control inbound and outbound traffic for EC2, ALB, and RDS.
- Use IAM roles and policies for secure permissions.

3️⃣ Server & Database Setup
- Launch EC2 instances in private subnets with WordPress and PHP stack.
- Configure Auto Scaling Groups for dynamic scaling across availability zones.
- Deploy an RDS MySQL Multi-AZ instance for database reliability and redundancy.

 4️⃣ Load Balancer & Traffic Distribution
- Set up an Application Load Balancer (ALB) in public subnets.
- Create Target Groups and register EC2 instances.
- Attach ALB to Auto Scaling Group for automatic traffic distribution.

 5️⃣ Content Delivery & Storage
- Set up Amazon CloudFront for caching and optimizing content delivery globally.
- Configure an S3 bucket for storing WordPress static content and media files.

 6️⃣ Domain Management & Security
- Use Route 53 to manage domain and DNS routing.
- Secure traffic with ACM-issued SSL/TLS certificates.
- Add AWS WAF to protect against web attacks.

---

🔐 Security Considerations
- Private Subnets: Protecting EC2 instances and RDS from direct internet access.
- NAT Gateway: Allowing outbound internet access without exposing internal servers.
- WAF: Filtering malicious traffic and common attacks (SQL injection, XSS, etc.).
- IAM Policies: Enforcing the principle of least privilege.
- ACM Certificates: Encrypting data in transit with HTTPS.

---

📝 Future Enhancements
- Serverless Architecture: Integrate AWS Lambda for automation and backend tasks.
- Email Notifications**: Use Amazon SES for transactional ticketing emails.
- Caching Layer: Implement ElastiCache (Redis/Memcached) for faster DB queries.
- AI Fraud Detection: Leverage AWS Fraud Detector for payment security.
- CI/CD Pipeline: Automate deployment with CodePipeline and CodeDeploy.

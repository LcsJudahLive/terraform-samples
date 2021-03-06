# Terraform GCP Steps

1. ### Create IAM svc account and save JSON key on ~/workspace/terraform/
2. ### Replace projectid on main.tf to create vpc network
3. ### Enable APIs:
   - CloudResource Manager API
   - Compute Manager API
   - Cloud Storage API
   - Cloud IAM API 
   - Cloud Billing API
4. ### Create Bucket on cloud storage to store remote state files and replace main.tf
5. ### terraform init --reconfigure
6. ### terraform plan
7. ### terraform apply
8. ### terraform destroy
# elk-aks-terraform - Can Alptekin
ELK deploy on Azure with Terraform

Introduction
Infrastructure as Code using terraform - Azure Kubernetes Clusters

Prerequisites

Azure CLI installed.

Assumes CLI Version = azure-cli (2.0.43) ** Required for RBAC changes

HashiCorp Terraform installed.

export VER="0.11.8"
wget https://releases.hashicorp.com/terraform/${VER}/terraform_${VER}_linux_amd64.zip
unzip terraform_${VER}_linux_amd64.zip
sudo mv terraform /usr/local/bin/
Setup Terraform Environment Variables

Generate Azure client id and secret.

After creating a Service Principal you MUST add API access for Windows Azure Active Directory and enable the following permissions

Read and write all applications
Sign in and read user profile
# Create a Service Principal
Subscription=$(az account show --query id -otsv)
az ad sp create-for-rbac --name "Terraform-Principal" --role="Owner" --scopes="/subscriptions/$Subscription"

# Expected Result
{
  "appId": "00000000-0000-0000-0000-000000000000",
  "displayName": "Terraform-Principal",
  "name": "http://Terraform-Principal",
  "password": "0000-0000-0000-0000-000000000000",
  "tenant": "00000000-0000-0000-0000-000000000000"
}
appId -> Client id.
password -> Client secret.
tenant -> Tenant id.

Export environment variables to configure the Azure Terraform provider.

A great tool to do this automatically with is direnv.

export ARM_SUBSCRIPTION_ID="YOUR_SUBSCRIPTION_ID"
export ARM_TENANT_ID="TENANT_ID"
export ARM_CLIENT_ID="CLIENT_ID"
export ARM_CLIENT_SECRET="CLIENT_SECRET"
export TF_VAR_client_id=${ARM_CLIENT_ID}
export TF_VAR_client_secret=${ARM_CLIENT_SECRET}
Getting Started
Run Terraform process
# Initialize the Modules
terraform init

# Test the plan
terraform plan

# Apply the Plan
terraform apply

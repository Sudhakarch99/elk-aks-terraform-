# Elk-Aks-Terraform - Can Alptekin
ELK deploy on Azure with Terraform

Introduction
Infrastructure as Code using terraform - Azure Kubernetes Clusters

Prerequisites

Azure CLI installed. ==> https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest

Assumes CLI Version = azure-cli (2.0.43) ** Required for RBAC changes

HashiCorp Terraform installed. ==> https://terraform.io/downloads.html

export VER="0.11.13"
wget https://releases.hashicorp.com/terraform/${VER}/terraform_${VER}_linux_amd64.zip
unzip terraform_${VER}_linux_amd64.zip
sudo mv terraform /usr/local/bin/
Setup Terraform Environment Variables

Generate Azure client id and secret.

After creating a Service Principal you MUST add API access for Windows Azure Active Directory and enable the following permissions

Read and write all applications
Sign in and read user profile
# AZ Login and Select Subscriptions
Az Ad Login
Az account set --subscription "subscriptionID"



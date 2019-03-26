# Elk-Aks-Terraform
#Can Alptekin

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

Read and write all applications
Sign in and read user profile
# AZ Login and Select Subscriptions

Az Ad Login

Az account set --subscription "subscriptionID"

# Deploy AKS

After login, run aks/deploy.sh with an authorized user ( Azure ).


# EventHub

Event hub messages will be ingested into Elasticsearch using Logstash pipeline, thus first resource I am going to create is Event Hub. Please follow steps listed in this article to create an Event Hub. The main pointers are Event Hub name I have selected for this sample solution is ‘logstash’. If you select a different name, update event hub name in the source code.
Keep a note of Event Hub connection string as this needs to be updated in Logstash pipeline and Event Hub messages publisher client.
Source code uses ‘$Default’ Resource_Group. Update this value if you create a Resource_Group

# Blob Storage
The next resource which you will need to create is Azure Blob Storage. Please follow steps listed in this article to create a storage account. Once storage account is created, create Blob Service-> Blobs. The main pointers are Blob container name I have specified in source code is ‘logstash’. If you select a different name, update storage container name in the source code.
Keep a note of Storage connection string as this needs to be updated in Logstash pipeline.

# aws-kubernetes-terraform
Terraform configuration to deploy a Kubernetes cluster on AWS using EKS  

### Repository structure

 .github/workflows/action.yaml  (Pipeline definition file)  

 autoscaler-iam.tf  (Creates IAM permissions for cluster autoscaler)  
 autoscaler-manifest.tf  (Installs cluster autoscaler on the EKS cluster)  
 eks.tf (Creates the EKS cluster)  
 helm-load-balancer-controller.tf (Installs the AWS load balancer controller using Helm)  
 helm-provider.tf (Defines the terraform Helm provider)  
 iam.tf (Creates an additional user to access the cluster)  
 main.tf (Defines the provider region)  
 outputs.tf (Defines outputs displayed after creation of resources)  
 variables.tf (Defines variables used in the configurations)  
 versions.tf (Defines version constraints)  
 vpc.tf (Creates the VPC for the cluster)  
 

### Manual steps required
Manually create S3 bucket to store terraform state

### How to use

Add the following secrets to the repository settings:  
  AWS_ACCESS_KEY_ID  = <your AWS IAM access key ID>  
  AWS_SECRET_ACCESS_KEY = <your AWS IAM secret access key ID>  
Edit variables.tf to set your Region, VPC name and EKS cluster name  
Merge to your master branch (pipeline is triggered upon push to master branch, you can edit this in the pipeline file)
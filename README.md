# AWS Terraform Workspace and Remote State Demo 

This HA configuration should not be used in a production environment, it is for demonstration purposes only.  Key ideas demonstrated:
  - VPC - with remote state
  - Product partitioning with TFE Workspaces (seperating networking group from developers)s

# Before you start

  - This demo assumes your AWS credentials are in the default location Terraform can find.  As an example, on OS-X they are found at ~/.aws/credentials
  - Make sure you change the value of "key_name" in terraform.tfvars or the TFE Variables page for your workspace

### Step to execute

* Make sure your AWS credentials (AWS Key/Secret) are defined in your environmentt
* Be sure to define your SSH PEM key
* terraform init
* terraform plan
* terraform apply
* The public IP addresses will be displayed, check out the output from Apache Web Server
* terraform destroy

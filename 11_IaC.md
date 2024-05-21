# Infrastructure as Code

## Terraform

### Terraform Use-Cases

1. Manage any infrastructure
2. Track your infrastructure
3. Automate changes
4. Standardize configurations
5. Collaborate

### Terraform Life Cycle
1. **Write** - Define infrastructure in configuration files.
2. **Plan** - Review the changes Terraform will make to your infrastructure.
3. **Apply** - Terraform provisions your infrastructure and updates the state file.

### Write the First Terraform Project
1. Install Terraform: [Guide](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
2. Basic Terraform commands - `terraform init` (Initialize), `terraform plan` (Dry run), `terraform apply`, `terraform destroy`
3. Write a Terraform file - Create a directory for your Terraform project and create a Terraform configuration file (usually named main.tf) in that directory. In this file, you define the AWS provider and resources you want to create. i.e. `main.tf`

*This script creates an EC-2 instance*
```tf
provider "aws" {
    region = "us-east-1"  # Set your desired AWS region
}

resource "aws_instance" "example" {
    ami           = "ami-0c55b159cbfafe1f0"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"
}
```
4. Initialize Terraform - In the terminal, navigate to the directory containing your Terraform configuration files and run: `terraform init`
5. Apply the Configuration - Run the following command to create the AWS resources defined in your Terraform configuration: `terraform apply`
6. Verify Resources
7. Destroy Resources - If you want to remove the resources created by Terraform, you can use the following command: `terraform destroy`

### State File and Good Practices
1. You should store your state files remotely (e.g S3 buckets), not on your local machine.
2. It is not a good idea to store the state file in a source control.
3. Isolate and organize the state files to reduce the blast radius.
4. Do not manipulate the state file.

### Problems with Terraform
1. State file is single source of truth (If file is corrupted, Terraform won't work)
2. Manual changes to the cloud provider cannot be identified and auto-corrected.
3. Not a GitOps friendly tool. Don't play well with Flux or Argo CD.
4. Can become very complex and difficult to manage.
5. Trying to position as a configuration management tool as well. 

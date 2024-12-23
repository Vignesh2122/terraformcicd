
all: init plan apply


init:
	@echo "Initializing Terraform..."
	terraform init

plan:
	@echo "Creating Terraform plan..."
	terraform plan 

apply:
	@echo "Applying Terraform configuration..."
	terraform apply -auto-approve  

destroy:
	@echo "Destroying Terraform-managed infrastructure..."
	terraform destroy -auto-approve 


clean:
	@echo "Cleaning up..."
	rm -rf .terraform

.PHONY: all init plan apply destroy clean

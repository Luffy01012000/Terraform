# Terraform
> **First** we need to install terraform cli\
> **Second** we also need aws cli to give command to our aws console\
> **Third** we need to configure our aws access key & access key id\
> **To configure** type aws configure and paste your aws access key & id

## To run all this .tf files type terraform init in cli
## Now type export TF_VAR_blank="any value you want to pass"
## Now, type terraform plan -var-file=prod.tfvars.json if it all works out 
## Type terraform apply -var-file=prod.tfvars.json
# devops-project-infrastructure
- This repo contains infrastructure code
- Project manifest located here: https://github.com/devopsway/devops-project-manifest

# How to use?
1. Install terraform cli: https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli
1. Register google cloud trial plan: https://cloud.google.com/free
1. Install `gcloud` cli: https://cloud.google.com/sdk/docs/install
1. Login `gcloud` cli with your account:
```shell
gcloud auth application-default login --no-launch-browser
```
4. Clone this repo:
```
git clone https://github.com/devopsway/devops-project-infrastructure.git
```
5. `cd` in the folder
```
cd devops-project-infrastructure
```
6. Create infrastructure with terraform
```
terraform plan
terraform apply
```

# Other things
- Delete infastructure
```
terraform destroy
```
Created networking modules where all the vpc networking resides

Also created ec2 modules for development branch which can be reused for any environment to created instances.

## Commands
### Packer
```
packer init .
packer validate .
packer build aws-ubuntu.pkr.hcl
packer build aws-linux.pkr.hcl
```
#### or
```
packer build .
```
To build all in the current directory

## cd to dev/main and run 
terraform apply -var-file=environments/dev.tfvars
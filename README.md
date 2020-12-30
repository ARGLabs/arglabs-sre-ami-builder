# About arglabs-sre-dns-private-zones

This is part of the [ARGLabs project](https://www.arglabs.com.br).

See more about this on [Github repository](https://github.com/ARGLabs/arglabs-sre-ami-builder) and this [blog post]().

### Why ?
Before we start bringing services up, we need a base Linux image to start from.

Many organizations have security and infrastructure team that are responsible for providing a base image with anti-virus, monitoring agents, system tunning etc already configured so the process of making the final AMIs faster and ensure baselines for all services and apps.

### What this repo does ?
This project will create base AMIs of Amazon Linux 2, both x86_64 and arm64.

For this, we'll use the following process:
- Packer wil bring up an instance on the build network
- Packer will call ansible 
- Ansible will run some basic roles to install basic packages, configure telegraf agent and some system tunning
- Packer will generate a new AMI from the instance

These ansible roles are just examples of what can be done.

### Highlights
We use a dedicated build network so we can have Internet access and ensure we don't touch any internal/production environments.

When your security team reports a new vulnerability and a fix, or some new system tunning you should apply to ALL services and apps, you just need to update the ansible roles and run this process again. Then, simply re-deploy all other services and apps. 

# How to use it

### Dependencies
- The [VPC infrastructure](https://arglabs.com.br/2020/12/28/the-vpc-infrastructure/)


### run.sh script
Usage:
```shell
./run.sh 
```

# Help
### How to get help
If you have found a bug or couldn't run this part of the lab, please open an issue as a bug report on this project.

### How to help
If you have any ideas to make this part of the lab better, please open an issue as a feature request for this project.
If you want to see something new on this lab and you can help me with it, please submit a feature request issue on [this project](https://github.com/ARGLabs/arglabs)


packer build -var-file=vars-amazon2-arm64.json build-ami.json
packer build -var-file=vars-amazon2-x86_64.json build-ami.json


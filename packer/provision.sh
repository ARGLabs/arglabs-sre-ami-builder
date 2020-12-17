#!/bin/bash
##############################
# This script is called by packer and
# already run with sudo.

echo
echo "-------------------------------------------"
echo "    Provisioning script."
echo "-------------------------------------------"
uname -a
yum update -y

amazon-linux-extras install epel -y
amazon-linux-extras install ansible2 -y



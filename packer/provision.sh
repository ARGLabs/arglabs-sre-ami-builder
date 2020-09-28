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

if [ "`cat /etc/system-release 2>> /dev/null | grep Amazon`" != "" ]; then
  amazon-linux-extras install epel -y
  amazon-linux-extras install ansible2 -y
else
  yum install -y epel-release
  yum install -y ansible
fi



#!/bin/bash

# Amazon VM images
# https://docs.aws.amazon.com/ja_jp/AWSEC2/latest/UserGuide/amazon-linux-2-virtual-machine.html
#
# https://cdn.amazonlinux.com/os-images/latest/virtualbox/
#
# https://cdn.amazonlinux.com/os-images/2.0.20190612/virtualbox/amzn2-virtualbox-2.0.20190612-x86_64.xfs.gpt.vdi

VDI_URL="https://cdn.amazonlinux.com/os-images/2.0.20190612/virtualbox/amzn2-virtualbox-2.0.20190612-x86_64.xfs.gpt.vdi"
VDI_FILE=`basename ${VDI_URL}`

VAGRANT_INSECUREKEY_URL="https://raw.githubusercontent.com/hashicorp/vagrant/master/keys/vagrant"
VAGRANT_INSECUREKEY_FILE="vagrant.pem"


if [ ! -e ${VAGRANT_INSECUREKEY_FILE} ]; then
  echo "ファイルをダウンロードします"
  curl -L ${VAGRANT_INSECUREKEY_URL} -o ${VAGRANT_INSECUREKEY_FILE}
fi

if [ ! -e ${VDI_FILE} ]; then
  echo "ファイルをダウンロードします"
  curl -L ${VDI_URL} -o ${VDI_FILE}
fi

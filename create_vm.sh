#!/bin/bash

SEED_FILE="seed.iso"
AMZN_VDI_RELEASE="20190612"
AMZN_VDI_FILE="amzn2-virtualbox-2.0.${AMZN_VDI_RELEASE}-x86_64.xfs.gpt.vdi"

if [ -e ${SEED_FILE} ]; then
  echo "Remove file ${SEED_FILE}"
  rm ${SEED_FILE}
fi

hdiutil makehybrid -iso -joliet -o ${SEED_FILE} seedconfig -joliet-volume-name cidata

# VMの作成とAmazon Linux 2の起動
# VM=vagrant-amznlinux2
# VDI=${AMZN_VDI_FILE}
# VBoxManage createvm --name "$VM" --ostype "Linux_64" --register
# VBoxManage storagectl "$VM" --name "SATA Controller" --add "sata" --controller "IntelAHCI"
# VBoxManage storagectl "$VM" --name "IDE Controller" --add "ide"
# VBoxManage storageattach "$VM" --storagectl "SATA Controller" --port 0 --device 0 --type hdd --medium $VDI
# VBoxManage storageattach "$VM" --storagectl "IDE Controller" --port 0 --device 0 --type dvddrive --medium seed.iso
# VBoxManage modifyvm "$VM" --natpf1 "ssh,tcp,127.0.0.1,2222,,22" --memory 1024 --vram 8 --audio none --usb off
# VBoxManage startvm "$VM" --type headless

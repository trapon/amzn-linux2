
VM="amzn-linux2"
AMZN_VDI_RELEASE="20190612"
AMZN_VDI_FILE="amzn2-virtualbox-2.0.${AMZN_VDI_RELEASE}-x86_64.xfs.gpt.vdi"
PACKAGE_FILE="${VM}-${AMZN_VDI_RELEASE}.box"

if [ -e ${PACKAGE_FILE} ]; then
  echo "Remove file ${PACKAGE_FILE}"
  rm ${PACKAGE_FILE}
fi

vagrant package --base "$VM" --output ${PACKAGE_FILE}
# vagrant box add --name "amzn2-2.0.${AMZN_VDI_RELEASE}.1-x86_64" ${PACKAGE_FILE}

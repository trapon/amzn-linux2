#!/bin/bash

PORT="2222"
KEY="./vagrant.pem"
USER="vagrant"
HOST="localhost"

echo "ssh -i ${KEY} ${USER}@${HOST} -p ${PORT} -o 'StrictHostKeyChecking no'"

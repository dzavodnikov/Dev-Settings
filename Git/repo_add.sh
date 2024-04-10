#!/usr/bin/env bash

echo "Enter the key ID:"
read ID

echo "Enter the computer name:"
read COMPUTER_NAME

echo "Enter the site hostname:"
read SITE_ADDR

# Create SSH Keys.
RSA_FILE=${ID}_rsa
RSA_PATH="${HOME}/.ssh/${RSA_FILE}"
ssh-keygen -t rsa -b 2048 -C "${COMPUTER_NAME}" -f "${RSA_PATH}"

echo "Host ${SITE_ADDR}
    IdentityFile ${RSA_PATH}
" >> ~/.ssh/config

# Add new ket to ssh-agent without restart.
ssh-add "${RSA_PATH}"

# Show next step.
echo "Add following public key to repository in '${ID}':"
cat "${RSA_PATH}.pub"

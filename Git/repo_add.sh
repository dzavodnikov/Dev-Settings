#!/usr/bin/env bash

echo "Enter computer name:"
read COMPUTER_NAME

echo "Enter site name:"
read SITE_NAME

# Create SSH Keys.
RSA_FILE=${SITE_NAME}_rsa
RSA_PATH=~/.ssh/${RSA_FILE}
ssh-keygen -t rsa -b 2048 -C ${COMPUTER_NAME} -f ${RSA_PATH}

echo "Host ${SITE_NAME}
    AddKeysToAgent yes
    IdentityFile ${RSA_PATH}
" >> ~/.ssh/config

# Reastart ssh-agent.
killall ssh-agent; eval "$(ssh-agent)"

# Show next step.
echo "Add following public key to repository in '${SITE_NAME}':"
cat ${RSA_PATH}.pub

#!/bin/bash

USERNAME="skp"
PUBKEY="skp@ubuntu.pub"

useradd -m "${USERNAME}" -s /bin/bash
echo "${USERNAME} ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
mkdir -p /home/${USERNAME}/.ssh
cat /home/vagrant/${PUBKEY} >> /home/${USERNAME}/.ssh/authorized_keys

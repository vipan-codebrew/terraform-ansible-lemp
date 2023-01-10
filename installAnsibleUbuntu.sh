#!/bin/bash
###################
# Install ansible #
if ! grep -q "ansible/ansible" /etc/apt/sources.list /etc/apt/sources.list.d/*; then
    echo "Adding Ansible PPA"
    sudo apt-add-repository ppa:ansible/ansible -y
fi

if ! hash ansible >/dev/null 2>&1; then
    echo "Installing Ansible..."
    sudo apt-get update
    sudo apt-get install software-properties-common ansible git python-apt -y
else
    echo "Ansible already installed"
fi

git clone https://github.com/harwi007/ansible-lemp.git

cd ansible-lemp && ansible-playbook components.yaml

echo "going to ansible folder"
cd /home/ubuntu/terraform-ansible-lemp
rm -rf  ansible-lemp

echo "ansible git clone remove"

apt remove ansible -y
apt autoclean &&  apt autoremove -y
echo "Ansible uninstalled"


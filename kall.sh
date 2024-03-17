#!/bin/sh

# Update package lists
sudo apt update

# Install necessary packages
sudo apt-get install -y apt-transport-https ca-certificates curl
sudo apt install docker.io -y
sudo systemctl enable --now docker

# Adding GPG keys
curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.28/deb/Release.key | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/kubernetes.gpg

# Add the Kubernetes repository to the source list
echo "deb [signed-by=/etc/apt/trusted.gpg.d/kubernetes.gpg] https://pkgs.k8s.io/core:/stable:/v1.28/deb/ /" | sudo tee /etc/apt/sources.list.d/kubernetes.list

# Update package lists again
sudo apt update

# Install Kubernetes components (specific version)
sudo apt install -y kubeadm=1.28.1-1.1 kubelet=1.28.1-1.1 kubectl=1.28.1-1.1

#curl -sSL https://github.com/kishanchand11/kubernetes/blob/master/kall.sh | tee kall.sh | sudo bash

sudo kubeadm reset --ignore-preflight-errors=all
sudo apt-get purge kubeadm kubectl kubelet kubernetes-cni kube*   
sudo apt-get autoremove  

# curl -sSL https://github.com/kishanchand11/kubernetes/raw/master/kpurge.sh | sudo tee kpurge.sh | sudo bash

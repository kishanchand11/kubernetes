mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

#copy curl -sSL https://github.com/kishanchand11/jenkins-ansible/raw/main/ansibleM.sh | tee ansibleM.sh | sudo bash

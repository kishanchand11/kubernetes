mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

#copy curl -sSL https://github.com/kishanchand11/kubernetes/raw/master/kcfg.sh | tee kcfg.sh | sudo bash

# curl https://raw.githubusercontent.com/projectcalico/calico/v3.27.2/manifests/calico.yaml -O
# kubectl apply -f calico.yaml

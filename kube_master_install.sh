#!/bin/bash
echo "Install Kubernets master node --> ...."
sudo kubeadm init --pod-network-cidr=10.244.0.0/16
sudo mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
RS=`kubectl apply -f https://docs.projectcalico.org/v3.14/manifests/calico.yaml`
echo $?

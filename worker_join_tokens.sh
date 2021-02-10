#!/bin/bash
echo "Listing All tokens ......"
sudo kubeadm tokens list
echo "generate a token for new node ......"
sudo kubeadm token create --print-join-command > /root/kubernetes_join.txt
echo "Please run the command on the node ...."

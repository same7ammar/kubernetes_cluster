#!/bin/bash
echo "Listing All tokens ......"
kubeadm tokens list
echo "generate a token for new node ......"
kubeadm token create --print-join-command > /root/kubernetes_join.txt
echo "Please run the command on the node ...."

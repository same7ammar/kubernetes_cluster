# kubernetes_cluster
1- prepare the nodes .

Please run the below command on the All node .

```bash
git clone https://github.com/same7ammar/kubernetes_cluster.git
cd kubernetes_cluster
chmod a+x *.sh
./prepare_cluster_nodes.sh
```

2- create a master nodes .

```bash
./kube_master_install.sh
```


3- create worker and join the cluster .

```bash
./worker_join_tokens.sh
```

4 - run the command on the new worker nodes .
```bash

kubeadm join 10.0.1.101:6443 --token g4cmo8.a61uneidlpvr8ebd     --discovery-token-ca-cert-hash sha256:f4000a9db2c7141d9625e78cdaf1563f09b7048c6c8d5f55d517392d5a1fdb8d

```

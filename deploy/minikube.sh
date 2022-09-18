cd "/home/knoldus/integration/node"
kubectl create namespace scc
kubectl apply -f dep.yml -f svc.yml -n scc
google-chrome 192.168.49.2:31412

minikube start --cpus 4 --memory 8192
kubectl get po -w
kubectl cluster-info
kubectl get pods -n spark-demo
kubectl delete --all pods -n spark-demo
kubectl logs demo-app -n spark-demo


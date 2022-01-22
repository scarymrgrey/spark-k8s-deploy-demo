
#export K8S_SERVER=$(kubectl config view --output=jsonpath='{.clusters[].cluster.server}')
./bin/spark-shell \
  --master k8s://https://192.168.59.100:8443 \
  --conf spark.kubernetes.container.image=spark:v3.2.0 \
  --conf spark.kubernetes.context=minikube
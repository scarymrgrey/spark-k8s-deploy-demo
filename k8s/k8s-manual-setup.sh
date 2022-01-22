kubectl create ns spark-demo
kubectl create serviceaccount spark -n spark-demo
kubectl create clusterrolebinding spark-role \
  --clusterrole edit \
  --serviceaccount spark-demo:spark \
  -n spark-demo
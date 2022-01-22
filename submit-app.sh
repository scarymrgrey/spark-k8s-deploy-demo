kubectl create namespace spark-demo
export POD_NAME=demo-app
spark-submit \
    --master k8s://https://192.168.59.100:8443  \
    --deploy-mode cluster \
    --name spark-k8s-sample \
    --class org.example.spark.k8s.SimpleApp \
    --conf spark.executor.instances=1 \
    --conf spark.kubernetes.context=minikube \
    --conf spark.kubernetes.driver.pod.name=$POD_NAME \
    --conf spark.kubernetes.namespace=spark-demo \
    --conf spark.kubernetes.authenticate.driver.serviceAccountName=spark \
    --conf spark.kubernetes.container.image=spark-v3.2.0-app:latest \
    local:///spark/jobs/spark-k8s-setup_2.12-0.1.jar
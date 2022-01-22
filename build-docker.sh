export SPARK_HOME="/Users/kpolunin/Dist/spark-3.2.0-bin-hadoop3.2"
export PATH="$SPARK_HOME/bin:$PATH"
#docker-image-tool.sh -m -t v3.2.0 -b java_image_tag=11-jre-slim build
docker-image-tool.sh -m -t v3.2.0-j1.8 -b java_image_tag=11-jre-slim build
sbt clean package
docker build -t spark-v3.2.0-app .
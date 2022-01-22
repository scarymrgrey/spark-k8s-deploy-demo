FROM spark:v3.2.0-j1.8
COPY target/scala-2.12/*.jar /spark/jobs/
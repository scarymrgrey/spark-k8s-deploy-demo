name := "spark-k8s-setup"

version := "0.1"

scalaVersion := "2.12.13"

idePackagePrefix := Some("org.example.spark.k8s")

libraryDependencies += "org.apache.spark" %% "spark-core" % "3.2.0"
libraryDependencies += "org.apache.spark" %% "spark-sql" % "3.2.0" % "provided"

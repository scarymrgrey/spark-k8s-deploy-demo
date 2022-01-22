package org.example.spark.k8s
import org.apache.spark.sql.SparkSession

object SimpleApp {
  def main(args: Array[String]) {
    val spark = SparkSession
      .builder
      .appName("Simple Application")
//      .master("local")
      .getOrCreate()
    import spark.implicits._

    val input = List("val0", "val1", "val-b", "val-c", "val0", "val-b", "val-b")
      .toDF("v")

    input
      .groupBy("v")
      .count()
      .show(false)

    spark.stop()
  }
}

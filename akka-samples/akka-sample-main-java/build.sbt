name := "akka-sample-main-java"

version := "2.3.11"

scalaVersion := "2.10.4"

libraryDependencies ++= Seq(
  "com.typesafe.akka" %% "akka-actor"      % "2.3.11",
  "com.typesafe.akka" %% "akka-slf4j"      % "2.3.11",
  "ch.qos.logback"    %  "logback-classic" % "1.1.2"
)


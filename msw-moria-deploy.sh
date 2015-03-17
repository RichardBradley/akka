#!/bin/bash

echo Make sure you first run:
echo  sbt clean publish

pushd target/repository
tar -cvzf ../../akka-publish.tgz *
popd

echo "Now upload akka-publish.tgz to http://moria:8081/artifactory/webapp/deployfromzip.html?1"

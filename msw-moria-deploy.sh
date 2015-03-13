#!/bin/bash

# Usage:
#   cp2 SOURCE... DIRECTORY
#
# Hardlinks all the SOURCE files into DIRECTORY, creating the latter
# if needed.
cp2() {
  mkdir -p "${@: -1}"
  cp -l "$@"
}


cp2 akka-stream/target/akka-stream-experimental_2.11-1.0-M4-mswFork-0.1* com/typesafe/akka/akka-stream-experimental_2.11/1.0-M4-mswFork-0.1/
cp2 akka-http-core/target/akka-http-core-experimental_2.11-1.0-M4-mswFork-0.1* com/typesafe/akka/akka-http-core-experimental_2.11/1.0-M4-mswFork-0.1/
cp2 akka-http/target/akka-http-experimental_2.11-1.0-M4-mswFork-0.1* com/typesafe/akka/akka-http-experimental_2.11/1.0-M4-mswFork-0.1/
cp2 akka-parsing/target/akka-parsing-experimental_2.11-1.0-M4-mswFork-0.1* com/typesafe/akka/akka-parsing-experimental_2.11/1.0-M4-mswFork-0.1/
cp2 akka-http-marshallers/akka-http-spray-json/target/akka-http-spray-json-experimental_2.11-1.0-M4-mswFork-0.1* com/typesafe/akka/akka-http-spray-json-experimental_2.11/1.0-M4-mswFork-0.1/
cp2 akka-http-testkit/target/akka-http-testkit-experimental_2.11-1.0-M4-mswFork-0.1* com/typesafe/akka/akka-http-testkit-experimental_2.11/1.0-M4-mswFork-0.1/

tar -cvzf 1.0-M4-mswFork-0.1.tgz com
rm -r com

echo "Now upload 1.0-M4-mswFork-0.1.tgz to http://moria:8081/artifactory/webapp/deployfromzip.html?1"

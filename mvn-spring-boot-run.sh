#!/bin/bash

export PORT=80

./docker-run.sh mvn package
./docker-run.sh mvn -pl service spring-boot:run -Dserver.port=$PORT
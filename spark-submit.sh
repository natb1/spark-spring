#!/bin/bash

./docker-run.sh mvn package
./docker-run.sh /spark/bin/spark-submit \
    --class "SimpleApp" \
    --master local \
    pipeline/target/pipeline-1.0-SNAPSHOT.jar
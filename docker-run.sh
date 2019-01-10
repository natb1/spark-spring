#!/bin/bash

IMAGE=spark-spring

docker build -t $IMAGE .
docker run -it \
    -v c:/Users/natha/IdeaProjects/spark-spring:/spark-spring \
    -w /spark-spring \
    -v c:/Users/natha/.m2:/root/.m2 \
    spark-spring $@

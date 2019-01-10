FROM maven:3.6-jdk-8-alpine

WORKDIR /spark-spring

ENV SPARK_VERSION 2.2.2
ENV SPARK_ARTIFACT spark-$SPARK_VERSION-bin-hadoop2.7
ENV SPARK_ARTIFACT_URL http://mirror.metrocast.net/apache/spark/spark-$SPARK_VERSION/$SPARK_ARTIFACT.tgz
ENV SPARK_HOME /spark

RUN \
  curl -fsL $SPARK_ARTIFACT_URL | tar xfz - -C / \
  && mv /$SPARK_ARTIFACT $SPARK_HOME

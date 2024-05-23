FROM apache/spark:3.4.1

ENV DERBY_HOME=/opt/db-derby-10.14.2.0-bin
ENV DERBY_VERSION=10.14.2.0
ENV SPARK_HOME=/opt/spark
ENV SPARK_VERSION=3.4

# Install basic utilities
USER root
RUN apt-get update && apt-get install -y wget

# Download Derby
RUN wget https://archive.apache.org/dist/db/derby/db-derby-${DERBY_VERSION}/db-derby-${DERBY_VERSION}-bin.tar.gz -P /opt/
RUN tar -xf /opt/db-derby-${DERBY_VERSION}-bin.tar.gz -C /opt/

# Copy Derby jars to Spark jars so Thrift can use them
RUN cp $DERBY_HOME/lib/derby.jar       $SPARK_HOME/jars/
RUN cp $DERBY_HOME/lib/derbyclient.jar $SPARK_HOME/jars/

RUN pip3 install pyspark==3.4.0

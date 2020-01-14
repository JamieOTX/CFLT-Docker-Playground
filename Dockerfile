ARG TAG

FROM confluentinc/cp-kafka-connect-base:${TAG}

RUN confluent-hub install --no-prompt confluentinc/kafka-connect-ibmmq:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-http:latest
RUN confluent-hub install --no-prompt debezium/debezium-connector-mysql:latest
RUN confluent-hub install --no-prompt debezium/debezium-connector-postgresql:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-elasticsearch:latest
RUN confluent-hub install --no-prompt wepay/kafka-connect-bigquery:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-gcs:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-hdfs:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-jdbc:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-kinesis:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-s3:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-s3-source:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-sqs:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-solace-source:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-solace-sink:latest
RUN confluent-hub install --no-prompt debezium/debezium-connector-mongodb:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-activemq:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-tibco-source:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-replicator:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-syslog:latest
RUN confluent-hub install --no-prompt splunk/kafka-connect-splunk:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-tibco-sink:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-ibmmq-sink:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-mqtt:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-jms:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-influxdb:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-cassandra:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-gcp-functions:latest
RUN confluent-hub install --no-prompt debezium/debezium-connector-sqlserver:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-activemq-sink:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-splunk-source:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-hdfs3:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-hdfs3-source:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-aws-cloudwatch-logs:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-aws-cloudwatch-metrics:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-aws-dynamodb:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-aws-lambda:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-aws-redshift:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-omnisci:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-rabbitmq:latest
RUN confluent-hub install --no-prompt jcustenborder/kafka-connect-spooldir:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-gcp-pubsub:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-gcp-spanner:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-jms-sink:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-gcs-source:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-azure-blob-storage:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-azure-data-lake-gen1-storage:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-azure-data-lake-gen2-storage:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-azure-event-hubs:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-azure-functions:latest
RUN confluent-hub install --no-prompt neo4j/kafka-connect-neo4j:latest
RUN wget https://packages.couchbase.com/clients/kafka/3.4.5/kafka-connect-couchbase-3.4.5.zip \
  && apt-get update && apt-get install unzip \
  && unzip kafka-connect-couchbase-3.4.5.zip \
  && mv kafka-connect-couchbase-3.4.5 /usr/share/confluent-hub-components/kafka-connect-couchbase
RUN confluent-hub install --no-prompt confluentinc/connect-transforms:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-sftp:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-hbase:latest
RUN confluent-hub install --no-prompt mongodb/kafka-connect-mongodb:0.2
RUN confluent-hub install --no-prompt jcustenborder/kafka-connect-redis:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-firebase:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-kudu:latest
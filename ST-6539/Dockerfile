# https://confluentinc.atlassian.net/browse/ST-6539
# docker build -t vdesabou/cp-server-connect-base:5.3.6 .
FROM confluentinc/cp-server-connect-base:5.3.6
COPY run /etc/confluent/docker/run
RUN ["chmod", "+x", "/etc/confluent/docker/run"]
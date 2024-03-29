ARG TAG
ARG CP_CONNECT_IMAGE
ARG TAG_JDBC
ARG CONNECT_USER
FROM ${CP_CONNECT_IMAGE}:${TAG}
ARG TAG
ARG TAG_BASE
ARG TAG_JDBC
ARG CONNECT_USER
USER root
RUN wget http://vault.centos.org/8.1.1911/BaseOS/x86_64/os/Packages/iproute-tc-4.18.0-15.el8.x86_64.rpm && rpm -i --nodeps --nosignature http://vault.centos.org/8.1.1911/BaseOS/x86_64/os/Packages/iproute-tc-4.18.0-15.el8.x86_64.rpm ; curl http://mirror.centos.org/centos/7/os/x86_64/Packages/tree-1.6.0-10.el7.x86_64.rpm -o tree-1.6.0-10.el7.x86_64.rpm && rpm -Uvh tree-1.6.0-10.el7.x86_64.rpm || true && exit 0
RUN curl http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/tcpdump-4.9.3-1.el8.x86_64.rpm -o tcpdump-4.9.3-1.el8.x86_64.rpm && rpm -Uvh tcpdump-4.9.3-1.el8.x86_64.rpm || true && exit 0
RUN yum -y install --disablerepo='Confluent*' bind-utils openssl unzip findutils net-tools nc jq which iptables libmnl krb5-workstation krb5-libs vim && yum clean all && rm -rf /var/cache/yum || true && exit 0
RUN apt-get update; echo bind-utils openssl unzip findutils net-tools nc jq which iptables iproute tree | xargs -n 1 apt-get install --force-yes -y && rm -rf /var/lib/apt/lists/* || true && exit 0
RUN rm -rf /tmp/* \
    && rm -rf /etc/confluent-control-center /usr/bin/control-center-* /usr/share/doc/confluent-control-center /usr/share/java/confluent-control-center
RUN mkdir -p /usr/share/confluent-hub-components && chown -R ${CONNECT_USER}:${CONNECT_USER} /usr/share/confluent-hub-components /etc/kafka /etc/schema-registry
USER ${CONNECT_USER}
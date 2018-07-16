FROM zexi/k8szk:v3

MAINTAINER "NingYu <ningyu@yunionyun.com>"

ENV TZ Asia/Shanghai

EXPOSE 2181 2888 3888 8781

ADD ./jolokia-jvm-1.5.0-agent.jar /opt/jolokia/jolokia-jvm-1.5.0-agent.jar

ADD ./zkServer.sh /usr/bin/zkServer.sh

RUN mkdir -p /opt/k8s/data/zookeeper

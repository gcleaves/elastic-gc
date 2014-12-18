FROM dockerfile/elasticsearch:latest
MAINTAINER Geoffrey Cleaves gcleaves@gcleaves.com
# This ENV Variable is only a temporary placeholder so that docker will build.  The proper variable must be set at runtime.
ENV DOCKER_HOST_IP localhost
ADD config/elasticsearch.yml /elasticsearch/config/elasticsearch.yml
RUN /elasticsearch/bin/plugin --install elasticsearch/elasticsearch-cloud-gce/2.4.1
RUN /elasticsearch/bin/plugin --install mobz/elasticsearch-head


FROM dockerfile/elasticsearch:latest
ENV DOCKER_HOST_IP localhost
ADD config/elasticsearch.yml /elasticsearch/config/elasticsearch.yml
RUN /elasticsearch/bin/plugin --install elasticsearch/elasticsearch-cloud-gce/2.4.1
RUN /elasticsearch/bin/plugin --install mobz/elasticsearch-head


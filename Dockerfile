FROM dockerfile/elasticsearch:latest
ADD config/elasticsearch.yml /elasticsearch/config/elasticsearch.yml
RUN /elasticsearch/bin/plugin --install elasticsearch/elasticsearch-cloud-gce/2.4.1
RUN /elasticsearch/bin/plugin --install mobz/elasticsearch-head


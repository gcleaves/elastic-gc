Elasticsearch docker that works with multicast discovery on the Google Cloud platform. Be sure to edit config/elasticsearch.yml accordingly before building Dockerfile. Set the HEAP_SIZE according to your environment. This Docker run command executes in the foreground so as to see logs. Should run with -d option.

It works for me.

    sudo docker build -t gcleaves/elastic-gc .
    sudo docker run --rm --name es-gc2 -p 9200:9200 -p 9300:9300 -p 9300:9300/udp -e ES_HEAP_SIZE=4g -v /mnt/disk2/docker/es-data:/data -e DOCKER_HOST_IP="your_host_ip" gcleaves/elastic-gc

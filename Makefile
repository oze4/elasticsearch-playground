.PHONY: og_elasticsearch_container
og_elasticsearch_container:
	docker run -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:7.7.1

.PHONY: elasticsearch6_container
elasticsearch6_container:
	docker run                                                                                           \
	-d                                                                                                   \
	--name elasticsearch6_7_2                                                                            \
	-p 9200:9200                                                                                         \
	-e http.port=9200                                                                                    \
	-e http.cors.enabled=true                                                                            \
	-e http.cors.allow-origin=http://localhost:1358,http://127.0.0.1:1358                                \
	-e http.cors.allow-headers=X-Requested-With,X-Auth-Token,Content-Type,Content-Length,Authorization   \
	-e http.cors.allow-credentials=true                                                                  \
	docker.elastic.co/elasticsearch/elasticsearch-oss:6.7.2                                              \

.PHONY: elasticsearch7_container
elasticsearch7_container:
	docker run                                                                                           \
	-d                                                                                                   \
	--name elasticsearch7_7_1                                                                            \
	-p 9200:9200                                                                                         \
	-p 9300:9300                                                                                         \
	-e discovery.type=single-node                                                                        \
	-e http.cors.enabled=true                                                                            \
	-e http.cors.allow-origin=http://localhost:1358,http://127.0.0.1:1358                                \
	-e http.cors.allow-headers=X-Requested-With,X-Auth-Token,Content-Type,Content-Length,Authorization   \
	-e http.cors.allow-credentials=true                                                                  \
	docker.elastic.co/elasticsearch/elasticsearch-oss:7.7.1                                              \

.PHONY: run
run:
	go run .

.PHONY: elasticsearch_dejavu
elasticsearch_dejavu:
	docker run                    \
	-d                            \
	--name elasticsearch-dejavu   \
	-p 1358:1358                  \
	appbaseio/dejavu              \

.PHONY: list_targets
list_targets:
	./list_targets.sh
	

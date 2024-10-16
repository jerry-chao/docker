docker exec -it redis-node-0 redis-cli -a 123456 --cluster create \
$(docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' redis-node-0):6380 \
$(docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' redis-node-1):6381 \
$(docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' redis-node-2):6382 \
--cluster-replicas 0

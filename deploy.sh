export DOCKER_HOST=ssh://root@198.199.78.21
export TARGET_URL=stormbroker.dclimate.net
docker-compose -f docker-compose.yml up --build --detach
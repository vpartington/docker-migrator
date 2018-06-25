docker build -t vpartington/docker-migrator .
docker run -it -v /var/run/docker.sock:/var/run/docker.sock -e V1_REGISTRY=docker.io -e V1_NO_LOGIN=true -e DOCKER_HUB=true -e DOCKER_HUB_ORG=xebialabs -e DOCKER_HUB_USERNAME=${DOCKER_HUB_USERNAME} -e DOCKER_HUB_PASSWORD=${DOCKER_HUB_PASSWORD} -e V1_REPO_FILTER=rest-o-rant -e V2_REGISTRY=docker.io/xebialabsunsupported -e V2_USERNAME=${DOCKER_HUB_USERNAME} -e V2_PASSWORD=${DOCKER_HUB_PASSWORD} -e V2_EMAIL=${DOCKER_HUB_EMAIL} vpartington/docker-migrator

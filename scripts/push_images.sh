TRAVIS_TAG="release-$(git rev-parse --short ${TRAVIS_COMMIT})"
echo "$TRAVIS_TAG" "$TRAVIS_COMMIT"

# udactiy-restapi-feed image
docker tag $DOCKER_USERNAME/udacity-restapi-feed $DOCKER_USERNAME/udacity-restapi-feed:$TRAVIS_TAG
docker tag $DOCKER_USERNAME/udacity-restapi-feed $DOCKER_USERNAME/udacity-restapi-feed:latest
docker push $DOCKER_USERNAME/udacity-restapi-feed:$TRAVIS_TAG
docker push $DOCKER_USERNAME/udacity-restapi-feed:latest

# udactiy-restapi-user image
docker tag $DOCKER_USERNAME/udacity-restapi-user $DOCKER_USERNAME/udacity-restapi-user:$TRAVIS_TAG
docker tag $DOCKER_USERNAME/udacity-restapi-user $DOCKER_USERNAME/udacity-restapi-user:latest
docker push $DOCKER_USERNAME/udacity-restapi-user:$TRAVIS_TAG
docker push $DOCKER_USERNAME/udacity-restapi-user:latest

# udacity-image-filter image
docker tag $DOCKER_USERNAME/udacity-image-filter $DOCKER_USERNAME/udacity-image-filter:$TRAVIS_TAG
docker tag $DOCKER_USERNAME/udacity-image-filter $DOCKER_USERNAME/udacity-image-filter:latest
docker push $DOCKER_USERNAME/udacity-image-filter:$TRAVIS_TAG
docker push $DOCKER_USERNAME/udacity-image-filter:latest

# udacity-frontend image
docker tag $DOCKER_USERNAME/udacity-frontend $DOCKER_USERNAME/udacity-frontend:$TRAVIS_TAG
docker tag $DOCKER_USERNAME/udacity-frontend $DOCKER_USERNAME/udacity-frontend:latest
docker push $DOCKER_USERNAME/udacity-frontend:$TRAVIS_TAG
docker push $DOCKER_USERNAME/udacity-frontend:latest

# reverseproxy image
docker tag $DOCKER_USERNAME/reverseproxy $DOCKER_USERNAME/reverseproxy:$TRAVIS_TAG
docker tag $DOCKER_USERNAME/reverseproxy $DOCKER_USERNAME/reverseproxy:latest
docker push $DOCKER_USERNAME/reverseproxy:$TRAVIS_TAG
docker push $DOCKER_USERNAME/reverseproxy:latest
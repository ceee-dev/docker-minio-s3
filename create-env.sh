echo "DOCKER_COMPOSE_PROJECT=minio" > .env
echo "MINIO_ROOT_PASSWORD=$(cat /dev/urandom | strings | grep -Eoa "[a-zA-Z0-9@$%&_]*" | head -n 10 | tr -d '\n'| cut -c1-16)" >> .env

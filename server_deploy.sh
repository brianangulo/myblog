git pull origin master
docker stop my_blog || true
docker rm my_blog || true
docker system prune -f -a --volumes
docker compose up -d --build --force-recreate

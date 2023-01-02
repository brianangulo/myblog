git pull origin master
docker stop my_blog || true
docker system prune --all --force
docker compose up -d --build --force-recreate

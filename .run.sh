sudo chmod 777 /var/run/docker.sock
# sudo kill $(sudo lsof -t -i:8000)
# sudo kill $(sudo lsof -t -i:80)
# sudo kill $(sudo lsof -t -i:443)
# sudo kill $(sudo lsof -t -i:3306)
# sudo kill $(sudo lsof -t -i:3001)
docker-compose up -d

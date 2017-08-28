docker build -t paperbird:yowsup -f Dockerfile .
docker run -d --name yowsup paperbird:yowsup tail -f /dev/null
docker exec -it yowsup /opt/yowsup/yowsup-cli
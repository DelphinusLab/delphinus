##The manifest repository

repo init -u https://github.com/ZhenXunGe/delphinus.git

repo sync
# how to use substrate-docker/Dockerfile
put it in the substrate-node folder

docker build -t start:latest .  
docker run -it -p 8081:9944 start:latest

Notice: Do not forget the "." after start:latest when run "docker build ..."

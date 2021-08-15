#The manifest repository

repo init -u git@github.com:ZhenXunGe/delphinus.git -b main

repo sync

# how to use substrate-docker/Dockerfile

docker build -t start:latest .

docker run -it -p 8081:9944 start:latest

# how to use monitors

docker-compose up

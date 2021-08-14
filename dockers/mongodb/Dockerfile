FROM ubuntu AS builder
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Shanghai
RUN  apt-get -yq update && \
     apt-get -y install mongodb
RUN mkdir /home/mongodb && \
    cd /home/mongodb && \
    mkdir data
WORKDIR /home/mongodb
CMD ["mongod", "--dbpath=data"]

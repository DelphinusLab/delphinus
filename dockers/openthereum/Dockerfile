FROM ubuntu AS builder
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Shanghai
RUN  apt-get -yq update && \
     apt-get -y install git
RUN cd /home && \
    git clone https://github.com/openethereum/openethereum.git
WORKDIR /home/openethereum
RUN apt -y update && \
    apt install -y --no-install-recommends \
    software-properties-common curl git file binutils binutils-dev \
    make cmake ca-certificates g++ zip dpkg-dev python openssl gettext\
    build-essential pkg-config libssl-dev libudev-dev time clang

# install rustup
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y

# rustup directory
ENV PATH /root/.cargo/bin:$PATH
#compiler ENV
ENV CC gcc
ENV CXX g++

RUN rustup override set 1.51.0
RUN cargo build --release
CMD ["./target/release/openethereum", "--chain", "ropsten", "--pruning", "fast"]

FROM ubuntu AS builder

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Shanghai
# The node will be built in this directory
WORKDIR /dock-node

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
COPY runtime runtime
COPY node node
COPY pallets pallets
COPY Cargo.toml .
COPY Cargo.lock .
# setup rust nightly channel, pinning specific version as newer versions have a regression
RUN rustup install nightly

# set default rust compiler
RUN rustup default nightly

# install wasm toolchain for substrate
RUN rustup target add wasm32-unknown-unknown --toolchain nightly
RUN cargo build --release
COPY scripts scripts
COPY start.sh .

CMD ["sh", "start.sh"]

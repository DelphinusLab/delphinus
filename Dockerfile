FROM ubuntu AS builder

WORKDIR /dock-node
COPY runtime runtime
COPY node node
COPY pallets pallets
COPY Cargo.toml .
COPY Cargo.lock .
COPY target target
COPY scripts scripts
COPY start.sh .

CMD ["sh", "start.sh"]

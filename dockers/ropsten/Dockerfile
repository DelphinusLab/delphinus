FROM ubuntu AS builder
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Shanghai
RUN  apt-get -yq update && \
     apt-get -y install git
RUN cd /home && \
    git clone https://gmk012347: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@github.com/ZhenXunGe/delphinus-monitors.git && \ 
    git clone https://gmk012347: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@github.com/ZhenXunGe/delphinus-web3subscriber.git && \
    git clone https://gmk012347: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@github.com/ZhenXunGe/delphinus-solidity.git && \
    mv delphinus-web3subscriber web3subscriber && \
    mv delphinus-solidity solidity
WORKDIR /home/delphinus-monitors
RUN npm install
RUN npm run build 
CMD ["node", "src/eth/monitor.js", "ropsten"]

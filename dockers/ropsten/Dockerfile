FROM ubuntu AS builder
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Shanghai
RUN  apt-get -yq update && \
     apt-get -y install git curl apt-utils && \
     curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && \
     apt-get install -y nodejs
RUN cd /home && \
    git clone https://mk012347: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@github.com/ZhenXunGe/delphinus-monitors.git && \ 
    git clone https://mk012347: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@github.com/ZhenXunGe/delphinus-web3subscriber.git && \
    git clone https://mk012347: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@github.com/ZhenXunGe/delphinus-solidity.git && \
    mv delphinus-web3subscriber web3subscriber && \
    mv delphinus-solidity solidity
RUN cd /home/web3subscriber && npm install
RUN cd /home/solidity && npm install
WORKDIR /home/delphinus-monitors
RUN npm install
RUN npm run build
CMD ["node", "src/eth/monitor.js", "ropsten"]

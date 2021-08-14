1. Openthereum:  
docker build -t openthereum .  
docker run -p 8546:8546 openethereum  

2. Mongodb:  
docker build -t mongodb .  
docker run --network="host" -p 27017:27017 mongodb  

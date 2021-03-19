FROM node:latest

RUN mkdir gateway
COPY package.json ./package.json
COPY lerna.json ./lerna.json
COPY services/gateway ./services/gateway
RUN npm i

CMD cd services/gateway && node index.js
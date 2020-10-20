FROM node:alpine

WORKDIR '/app'

COPY package.json .
RUN apk add --update redis
RUN npm install
COPY . .

CMD sh start.sh

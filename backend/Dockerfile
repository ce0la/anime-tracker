# FROM node:alpine
FROM node:latest

WORKDIR /usr/src/anime-be

COPY package*.json ./

RUN npm install

# RUN npm install express -g

COPY . .

EXPOSE 8080

CMD ["npm", "run", "servers"]
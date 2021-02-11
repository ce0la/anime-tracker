FROM node:latest

WORKDIR /usr/src/anime-be

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080

CMD ["npm", "run", "servers"]
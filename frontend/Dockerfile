FROM node:latest
WORKDIR /usr/src/anime-fe

COPY package*.json /usr/src/anime-fe/
COPY yarn.lock /usr/src/anime-fe/

RUN npm install

# RUN npm install express -g

COPY . /usr/src/anime-fe/

EXPOSE 3000

CMD ["yarn", "start"]
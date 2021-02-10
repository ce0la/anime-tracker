FROM node:alpine

# Setting working directory
WORKDIR /usr/src

# Copying packages*.json and yarn.lock for Frontend and installing pkgs
COPY ./frontend/package*.json /usr/src/anime-fe/
COPY ./frontend/yarn.lock /usr/src/anime-fe/
RUN cd ./frontend && npm install

# Copying packages*.json for Backend and installing pkgs
COPY ./backend/package*.json /usr/src/anime-be/
RUN cd ./backend && npm install

# Copying other files from Frontend into image
COPY ./frontend/ /usr/src/anime-fe/

# Copying other files from Backend into image
COPY ./backend/ /usr/src/anime-be/

EXPOSE 8080
EXPOSE 3000

CMD ["yarn", "start"]
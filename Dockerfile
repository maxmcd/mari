FROM node:latest

RUN apt-get update
RUN apt-get -y install libgtkextra-dev libgconf2-dev libnss3 libasound2 libxtst-dev libxss1 libx11-xcb-dev libgtk3.0

WORKDIR /srv
COPY package.json package.json
RUN npm install

COPY . .
CMD npx electron .
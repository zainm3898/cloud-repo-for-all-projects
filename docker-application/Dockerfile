# #base image
# FROM ubuntu
# #install the node js for ubuntu
# RUN apt-get update -y
# #curl tool
# RUN apt-get install -y curl
# #nodejs installation
# RUN curl -sL https://deb.nodesource.com/setup_18.x | bash -
# RUN apt-get upgrade -y
# RUN apt-get install -y nodejs

FROM node

#COPY our code in this image
COPY package.json package.json
COPY package-lock.json package-lock.json
COPY main.js main.js

#npm package install
RUN npm install

ENTRYPOINT [ "node", "main.js" ]


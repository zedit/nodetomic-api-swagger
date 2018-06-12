FROM ubuntu:16.04

RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_9.x | bash -
RUN apt-get install nodejs -y

COPY . /nodetomic-api-swagger

WORKDIR /nodetomic-api-swagger

RUN npm i

CMD npm start

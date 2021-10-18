FROM node:lts-buster-slim as builder

# set work directory
WORKDIR /usr/src/app

# install system dependencies
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y --no-install-recommends gcc
RUN apt-get install -y git

FROM node:lts-buster-slim

RUN mkdir -p home/app

RUN ls home/app

# create the app user
RUN addgroup --system app
RUN adduser --system app
RUN usermod -a -G app app

# create the appropriate directories
ENV HOME=/home/app
WORKDIR $HOME

# create an appropriate package.json
RUN echo '{"name": "storm_broker","version": "1.0.0"}' > package.json

# install dependencies
RUN apt-get update && apt-get install -y --no-install-recommends netcat
RUN apt-get install -y libsm6
RUN apt-get install -y libxext6
RUN apt-get install -y libxrender-dev
RUN npm install --global http-server

# copy project
COPY . $HOME

# chown all the files to the app user
RUN chown -R app:app $HOME
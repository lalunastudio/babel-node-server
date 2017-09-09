FROM node:6.7.0
MAINTAINER Peter Nielsen <peter@laluna.io>

RUN apt-get update -y
RUN apt-get autoremove -y && rm -rf /usr/share/doc /usr/share/doc-base /usr/share/man /usr/share/locale /usr/share/zoneinfo && rm -rf /var/lib/cache /var/lib/log && rm -rf /tmp/* && npm cache clear

RUN npm cache clean
# RUN npm -g install npm@latest
# RUN curl -L https://npmjs.org/install.sh | sh

#Add everything to image
COPY . /app
WORKDIR /app

#build
RUN yarn install  --no-lockfile
RUN yarn run build

# WORKDIR /build/bundle/programs/server
# RUN npm install --production

EXPOSE 80

# WORKDIR /app/dist

CMD node dist/index.js

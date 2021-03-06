FROM rezzza/docker-node:latest

MAINTAINER Shaun Burdick <docker@shaunburdick.com>

RUN apk add -U tzdata

ENV NODE_ENV=production \
    SLACK_TOKEN=xoxb-foo \
    SLACK_AUTO_RECONNECT=true\
    APP_ANNOUNCE_CHANNELS= \
    APP_ANNOUNCE_TIMES=

ADD . /usr/src/myapp

WORKDIR /usr/src/myapp

RUN ["npm", "install"]

CMD ["npm", "start"]

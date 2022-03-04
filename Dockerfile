FROM node:6-slim

MAINTAINER JinHai <zoujinhai@yeah.net>

ARG VERSION=3.2.3

LABEL version=$VERSION

RUN npm install --global gitbook-cli &&\
	gitbook fetch ${VERSION} &&\
	npm cache clear &&\
	rm -rf /tmp/*

WORKDIR /gitbook

VOLUME /gitbook

EXPOSE 4000 35729

CMD /usr/local/bin/gitbook serve

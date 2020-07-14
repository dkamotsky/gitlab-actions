FROM alpine:latest

RUN apk add --no-cache bash git curl

#RUN apk add --no-cache bash git curl && sed -i '1croot:x:0:0:root:/root:/bin/bash' /etc/passwd
RUN mkdir -p /github/home /github/workflow /opt/hostedtoolcache

RUN curl https://raw.githubusercontent.com/nektos/act/master/install.sh | bash

ENV AGENT_TOOLSDIRECTORY /opt/hostedtoolcache

COPY .github /github/workspace/.github

WORKDIR /github/workspace

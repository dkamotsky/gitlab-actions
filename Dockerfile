FROM alpine:latest

RUN apk add --no-cache bash git curl \
    && mkdir -p /github/home /github/workflow

RUN curl https://raw.githubusercontent.com/nektos/act/master/install.sh | bash

COPY .github /github/workspace/.github

WORKDIR /github/workspace

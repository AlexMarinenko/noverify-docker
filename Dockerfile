FROM golang:alpine

ENV ENTRYPOINT_CMD="noverify check -stubs-dir=/root/phpstorm-stubs -cache-dir=/tmp/cache/noverify -exclude=/vendor /project"

RUN apk update && apk --update add \
    git

RUN git clone https://github.com/JetBrains/phpstorm-stubs /root/phpstorm-stubs && \
    go get -u github.com/VKCOM/noverify

ENTRYPOINT $ENTRYPOINT_CMD
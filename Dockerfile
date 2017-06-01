FROM alpine

RUN apk add --update curl ca-certificates && \
    rm -rf /var/cache/apk/*
COPY gopath/bin/gcsproxy /gcsproxy

CMD ["/gcsproxy"]

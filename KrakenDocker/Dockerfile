FROM alpine:latest

RUN apk update && apk add jq curl

WORKDIR /app

COPY KrakenPrice ./

RUN chmod +x KrakenPrice

ENTRYPOINT ["/bin/sh", "/app/KrakenPrice"]
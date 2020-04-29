FROM alpine:3.11

WORKDIR /app

RUN apk add --no-cache git nodejs yarn && \
  git clone https://github.com/ra3-se/quake3-server-report.git /app && \
  yarn install && \
  yarn add mysql

COPY start.sh start.sh

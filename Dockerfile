FROM golang:1.19-alpine

RUN mkdir /app

ADD /go /app

WORKDIR /app

CMD ["go","run","main.go"]

EXPOSE 5000
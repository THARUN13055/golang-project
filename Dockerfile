FROM golang:1.19-alpine

WORKDIR /usr/src/app

COPY /go/ /usr/src/app/

CMD ["go","run","/usr/src/app/go/hello.go"]

EXPOSE 8080
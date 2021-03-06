FROM golang:1.7
RUN mkdir /app
WORKDIR /app
ADD . .
RUN export GOPATH=/go
RUN go get github.com/gorilla/websocket
EXPOSE 8000
CMD ["go", "run", "src/main.go"]

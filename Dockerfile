FROM golang:1.16-alpine
WORKDIR /app

COPY *.go ./
RUN go build -o /docker-gs-ping

EXPOSE 8080
ENTRYPOINT [ "/docker-gs-ping" ]
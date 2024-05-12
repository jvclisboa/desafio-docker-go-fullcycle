FROM golang:1.22.3-alpine3.19

WORKDIR /app

COPY main.go .

RUN go build -o main main.go

CMD ["./main"]
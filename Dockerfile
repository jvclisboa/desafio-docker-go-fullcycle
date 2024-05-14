FROM golang:1.22.3-alpine3.19 AS builder

WORKDIR /app

COPY main.go .

RUN go build -o main main.go

FROM scratch

COPY --from=builder /app/main .

CMD ["./main"]
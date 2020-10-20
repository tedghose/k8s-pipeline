ARG GO_VERSION=1.14.4
FROM golang:${GO_VERSION}

WORKDIR /app/
COPY *.go ./ 
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o main .
CMD ["./main"]

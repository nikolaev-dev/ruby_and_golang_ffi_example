FROM golang:latest

WORKDIR /app
ARG BUILD_DIR=/app/build
RUN mkdir -p ${BUILD_DIR}
# COPY go.mod go.sum ./
COPY go.mod  ./
RUN go mod download
COPY . .
RUN go build -o main .
EXPOSE 8080
VOLUME [${BUILD_DIR}]
CMD go build -buildmode=c-shared -o ./build/main.so main.go 
# CMD go build -buildmode=c-shared -o main .
# CMD ["./main"]


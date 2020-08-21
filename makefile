APP=simpleserver

.PHONY: build compile all

build:
	go build -o bin/${APP} main.go

compile:
	echo "Compiling for every OS and Platform"
	GOOS=linux GOARCH=arm go build -o bin/${APP}-linux-arm main.go
	GOOS=linux GOARCH=arm64 go build -o bin/${APP}-linux-arm64 main.go
	GOOS=freebsd GOARCH=386 go build -o bin/${APP}-freebsd-386 main.go

all: build compile

APP_VERSION := v1

.PHONY: all

all: main.go
	go build -o bin/docker-presentation -ldflags "-X main.version $(APP_VERSION)" main.go

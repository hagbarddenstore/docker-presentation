APP_VERSION := v1
CGO_ENABLED := 0

.PHONY: all

all: main.go
	go build -o bin/docker-presentation -ldflags "-X main.version $(APP_VERSION) -s" main.go

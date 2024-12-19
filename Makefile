BINARY_NAME=goscraper
build:
	@GOARCH=amd64 GOOS=darwin go build -o bin/${BINARY_NAME}-darwin-amd64
	@GOARCH=arm64 GOOS=darwin go build -o bin/${BINARY_NAME}-darwin-arch64
	@GOARCH=amd64 GOOS=linux go build -o bin/${BINARY_NAME}-linux 
	@GOARCH=amd64 GOOS=windows go build -o bin/${BINARY_NAME}-windows

run: build
	@./bin/${BINARY_NAME}-linux


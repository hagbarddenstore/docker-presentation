package main

import (
  "net/http"
  "fmt"
)

var version = "v1"

func main() {
  fmt.Println("Running", version, "on localhost:8080")

  http.HandleFunc("/", serveHTTP)

  http.ListenAndServe(":8080", nil)
}

func serveHTTP(response http.ResponseWriter, request *http.Request) {
  fmt.Fprintln(response, version)
}

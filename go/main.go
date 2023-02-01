package main

import (
	"fmt"
	"net/http"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprint(w, "Hello, World!")
	})

	err := http.ListenAndServe(":5000", nil)
	if err != nil {
		panic(err)
	}
}

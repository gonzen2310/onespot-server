package main

import (
	"encoding/json"
	"fmt"
	"log"
	"net/http"
)

type Project struct {
	Title   string `json:"title"`
	Descr   string `json:"desc"`
	Content string `json:"content"`
}

type Projects []Project

func allProjects(w http.ResponseWriter, r *http.Request) {
	projects := Projects{
		Project{Title: "Project 1", Descr: "Descirption 1", Content: "Content 1"},
	}

	fmt.Println("Endpoint: ALL PROJECTS")
	json.NewEncoder(w).Encode(projects)
}

func homePage(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Homepage endpoint Hit")
}

func handleRequests() {
	http.HandleFunc("/", homePage)
	http.HandleFunc("/projects", allProjects)
	log.Fatal(http.ListenAndServe(":3001", nil))
}

func main() {
	handleRequests()
}

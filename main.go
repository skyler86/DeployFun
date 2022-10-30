package main

import (
	"fmt"
	"github.com/beego/beego/v2/server/web"
)

type MainController struct {
	web.Controller
}

func (this *MainController) Get() {
	this.Ctx.WriteString("hello skyler")
}

func main() {
	var branch = "main"
	fmt.Println("Hello, Kubernetes！I'm from Jenkins CI！")
	fmt.Println("BRANCH_NAME:", branch)

	web.Router("/", &MainController{})
	web.Run()
}

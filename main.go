package main

import "C"
import "fmt"

//export sq
func sq(num int) int {
	return num * num
}

func main() {
	fmt.Println(sq(10))
}
